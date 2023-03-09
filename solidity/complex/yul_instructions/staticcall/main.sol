// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./gas_test.sol";
import "./input_test.sol";
import "./input_test_with_value.sol";
import "./output_test.sol";
import "./output_test_with_value.sol";
import "./failure_test.sol";
import "./caller_test.sol";
import "./callvalue_test.sol";
import "./selfbalance_test.sol";
import "./sstore_test.sol";
import "./sload_test.sol";
import "./log_test.sol";

contract Main {
    // reserved slot
    uint256 __;
    GasTest gasTest;
    InputTest inputTest;
    InputTestWithValue inputTestWithValue;
    OutputTest outputTest;
    OutputTestWithValue outputTestWithValue;
    FailureTest failureTest;
    CallerTest callerTest;
    CallvalueTest callvalueTest;
    SelfbalanceTest selfbalanceTest;
    SstoreTest sstoreTest;
    SloadTest sloadTest;
    LogTest logTest;

    constructor() public {
        gasTest = new GasTest();
        inputTest = new InputTest();
        inputTestWithValue = new InputTestWithValue();
        outputTest = new OutputTest();
        outputTestWithValue = new OutputTestWithValue();
        failureTest = new FailureTest();
        callerTest = new CallerTest();
        callvalueTest = new CallvalueTest();
        selfbalanceTest = new SelfbalanceTest();
        sstoreTest = new SstoreTest();
        sloadTest = new SloadTest();
        logTest = new LogTest();
    }

    function gas_test(uint256 _gas) external {
        address _gasTest = address(gasTest);
        assembly {
            let gasLeft := gas()

            let result := staticcall(_gas, _gasTest, 0, 0, 32, 32)

            mstore(0, result)
            if iszero(result) {
                return(0, add(32, returndatasize()))
            }
            if iszero(eq(returndatasize(), 32)) {
                return(0, add(32, returndatasize()))
            }
            // less than 63/64
            if iszero(lt(mul(64, mload(32)), mul(63, gasLeft))) {
                return(0, add(32, returndatasize()))
            }
            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function address_test(uint256 _address) external {
        assembly {
            let result := staticcall(gas(), _address, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function dirty_address_test(address _address) external {
        uint256 _address = uint256(uint160(_address)) | (0xff001122deadbeef9944eeaa << 160);
        assembly {
            let result := staticcall(gas(), _address, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function input_test(uint256 offset, uint256 len) external {
        address _inputTest = address(inputTest);
        assembly {
            let result := staticcall(gas(), _inputTest, offset, len, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function input_test_with_value(uint256 offset, uint256 len, uint256 val) external {
        address _inputTestWithValue = address(inputTestWithValue);
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), val)
            }
            let result := staticcall(gas(), _inputTestWithValue, offset, len, 32, len)
            mstore(0, result)
            if or(iszero(result), iszero(eq(returndatasize(), len))) {
                return(0, add(32, returndatasize()))
            }
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                if iszero(eq(shr(248, mload(add(i, 32))), val)) {
                    return(0, add(32, returndatasize()))
                }
            }
            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function output_test(uint256 offset, uint256 len, uint256 real_len) external {
        outputTest.setLen(real_len);
        address _outputTest = address(outputTest);
        assembly {
            let result := staticcall(gas(), _outputTest, 0, 0, offset, len)
            mstore(0, result)
            mstore(32, returndatasize())
            return(0, 64)
        }
    }

    function output_test_with_value(uint256 offset, uint256 len, uint256 real_len, uint8 val, uint8 before_val) external {
        outputTestWithValue.setParams(real_len, val);
        address _outputTestWithValue = address(outputTestWithValue);
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                mstore8(add(offset, i), before_val)
            }
            let result := staticcall(gas(), _outputTestWithValue, 0, 0, offset, len)

            if or(iszero(result), iszero(eq(returndatasize(), real_len))) {
                mstore(0, result)
                returndatacopy(32, 0, returndatasize())
                return(0, add(returndatasize(), 32))
            }

            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                let fl := 0
                switch lt(i, real_len)
                case 1 {
                    if iszero(eq(shr(248, mload(add(offset, i))), val)) {
                        fl := 1
                    }
                }
                case 0 {
                    if iszero(eq(shr(248, mload(add(offset, i))), before_val)) {
                        fl := 1
                    }
                }
                if fl {
                    mstore(0, result)
                    returndatacopy(32, 0, returndatasize())
                    return(0, add(returndatasize(), 32))
                }
            }
            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function failure_test() external {
        address _failureTest = address(failureTest);
        assembly {
            let result := staticcall(gas(), _failureTest, 0, 0, 0, 0)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function caller_test() external {
        address _callerTest = address(callerTest);
        assembly {
            let result := staticcall(gas(), _callerTest, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function callvalue_test() external payable {
        address _callvalueTest = address(callvalueTest);
        assembly {
            let result := staticcall(gas(), _callvalueTest, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function selfbalance_test() external {
        address _selfbalanceTest = address(selfbalanceTest);
        assembly {
            let result := staticcall(gas(), _selfbalanceTest, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function sstore_test() external {
        address _sstoreTest = address(sstoreTest);
        assembly {
            let result := staticcall(gas(), _sstoreTest, 0, 0, 0, 0)
            mstore(0, result)
            return(0, add(returndatasize(), 32))
        }
    }

    function sload_test() external {
        address _sloadTest = address(sloadTest);
        assembly {
            sstore(0, 0x63)
            let result := staticcall(gas(), _sloadTest, 0, 0, 32, 32)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    function log_test() external {
        address _logTest = address(logTest);
        assembly {
            let result := staticcall(gas(), _logTest, 0, 0, 0, 0)
            mstore(0, result)
            return(0, add(32, returndatasize()))
        }
    }

    fallback() external {
        assembly {
            mstore(0, address())
            return(0, 32)
        }
    }
}

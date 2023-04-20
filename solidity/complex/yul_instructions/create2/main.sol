// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Main {
    uint256 counter;

    function value_test(uint256 value, address _address) external payable {
        assembly {
            let _counter := sload(0)
            sstore(0, add(_counter, 1))
            mstore(36, extcodehash(_address))
            let result := create2(value, 0, 132, _counter)
            if iszero(result) {
                mstore(0, 0)
                return(0, 32)
            }
            mstore(0, 1)
            mstore(32, balance(result))
            return(0, 64)
        }
    }

    function input_test(uint256 offset, uint256 args_length, address _address) external {
        address result;
        assembly {
            let _counter := sload(0)
            sstore(0, add(_counter, 1))
            mstore(add(offset, 36), extcodehash(_address))
            let len := add(args_length, 132)
            result := create2(0, offset, len, _counter)
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    function input_test_with_value(uint256 offset, uint256 args_length, uint8 val, address _address) external {
        address result;
        assembly {
            let _counter := sload(0)
            sstore(0, add(_counter, 1))
            mstore(add(offset, 36), extcodehash(_address))
            for { let i := 0 } lt(i, args_length) { i := add(i, 1) }
            {
                mstore8(add(add(offset, 132), i), val)
            }
            let len := add(args_length, 132)
            result := create2(0, offset, len, _counter)
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    function failure_test(address _address) external {
        assembly {
            mstore(36, extcodehash(_address))
            mstore(132, 1)
            let result := create2(0, 0, 164, 0)
            mstore(0, result)
            return(0, 32)
        }
    }

    function salt_test(uint256 salt, address _address) external {
        assembly {
            mstore(36, extcodehash(_address))
            let result := create2(0, 0, 132, salt)
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    function create2_same_address(address _address) external {
        assembly {
            mstore(36, extcodehash(_address))
            let result1 := create2(0, 0, 132, 0)
            if gt(result1, 0) {
                result1 := 1
            }
            let result2 := create2(0, 0, 132, 0)
            if gt(result2, 0) {
                result2 := 1
            }
            mstore(0, result1)
            mstore(32, result2)
            return(0, 64)
        }
    }
}

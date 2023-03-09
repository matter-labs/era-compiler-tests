// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Main {
    function value_test(uint256 value, address _address) external payable {
        assembly {
            mstore(36, extcodehash(_address))
            let result := create(value, 0, 132)
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
            mstore(add(offset, 36), extcodehash(_address))
            let len := add(args_length, 132)
            result := create(0, offset, len)
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
            mstore(add(offset, 36), extcodehash(_address))
            for { let i := 0 } lt(i, args_length) { i := add(i, 1) }
            {
                mstore8(add(add(offset, 132), i), val)
            }
            let len := add(args_length, 132)
            result := create(0, offset, len)
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    function failure_test(uint256 value, address _address) external payable {
        assembly {
            mstore(36, extcodehash(_address))
            let result := create(0, 0, 132)
            mstore(0, result)
            return(0, 32)
        }
    }
}

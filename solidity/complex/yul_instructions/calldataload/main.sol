// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./deploy.sol";

contract Main {
    uint256 public s0;

    function runtime(uint256 index, uint256 len, uint8 val) external {
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            sstore(0, index)
            let result := call(gas(), address(), 0, 0, len, 32, 32)
            mstore(0, result)
            return(0, add(returndatasize(), 32))
        }
    }

    function deploy(uint256 index, uint256 len, uint8 val) external {
        bytes memory deploy_calldata = type(Deploy).creationCode;
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(i, add(deploy_calldata, 164)), val)
            }
            sstore(0, index)
            let result := create(0, add(deploy_calldata, 32), add(132, len))
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    fallback() external {
        assembly {
            let index := sload(0)
            mstore(0, calldataload(index))
            return(0, 32)
        }
    }
}

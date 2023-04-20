// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

import "./deploy.sol";

contract Main {
    uint256 public s0;
    uint256 public s1;
    uint256 public s2;
    uint256 public s3;

    function runtime(uint256 to, uint256 from, uint256 len, uint256 calldata_len, uint8 val, bool check, uint256 ergs) external {
        assembly {
            for { let i := 0 } lt(i, calldata_len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            sstore(0, to)
            sstore(1, from)
            sstore(2, len)
            sstore(3, check)
            let result := call(ergs, address(), 0, 0, calldata_len, 32, 32)
            mstore(0, result)
            return(0, add(returndatasize(), 32))
        }
    }

    function deploy(uint256 to, uint256 from, uint256 len, uint256 calldata_len, uint8 val, bool check, uint256 ergs) external returns(uint256) {
        assembly {
            sstore(0, to)
            sstore(1, from)
            sstore(2, len)
            sstore(3, check)
        }
        return this.create_wrapper{gas: ergs}(calldata_len, val);
    }

    function create_wrapper(uint256 calldata_len, uint8 val) external returns(uint256) {
        bytes memory deploy_calldata = type(Deploy).creationCode;
        assembly {
            for { let i := 0 } lt(i, calldata_len) { i := add(i, 1) }
            {
                mstore8(add(i, add(deploy_calldata, 164)), val)
            }
            let result := create(0, add(deploy_calldata, 32), add(132, calldata_len))
            if gt(result, 0) {
                result := 1
            }
            mstore(0, result)
            return(0, 32)
        }
    }

    fallback() external {
        assembly {
            let to := sload(0)
            let from := sload(1)
            let len := sload(2)
            let check := sload(3)
            calldatacopy(to, from, len)

            if gt(check, 0) {
                for { let i := 0 } lt(i, len) { i := add(i, 1) }
                {
                    if iszero(eq(
                    shr(248, mload(add(to, i))),
                    shr(248, calldataload(add(from, i)))
                    )) {
                        mstore(0, 0)
                        return(0, 32)
                    }
                }
            }

            mstore(0, 1)
            return(0, 32)
        }
    }
}
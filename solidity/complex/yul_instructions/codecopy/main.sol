// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

import "./other.sol";

contract Main {
    uint256 public s0;
    uint256 public s1;
    uint256 public s2;
    uint256 public s3;
    uint256 public s4;
    uint256 public s5;

    function test(uint256 to, uint256 from, uint256 len, uint256 calldata_len, uint8 val, bool check, uint256 ergs) external returns(uint256) {
        assembly {
            sstore(0, to)
            sstore(1, from)
            sstore(2, len)
            sstore(3, check)
            sstore(4, calldata_len)
            sstore(5, val)
        }
        return this.create_wrapper{gas: ergs}(calldata_len, val);
    }

    function create_wrapper(uint256 calldata_len, uint8 val) external returns(uint256) {
        bytes memory deploy_calldata = type(Other).creationCode;
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
}
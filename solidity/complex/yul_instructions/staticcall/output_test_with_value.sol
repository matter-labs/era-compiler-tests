// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract OutputTestWithValue {
    function setParams(uint256 len, uint8 val) external {
        assembly {
            sstore(0, len)
            sstore(1, val)
        }
    }

    fallback() external {
        assembly {
            let len := sload(0)
            let val := sload(1)
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            return(0, len)
        }
    }
}

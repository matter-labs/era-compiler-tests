// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract OutputTestWithValue {
    fallback() external {
        assembly {
            let len := sload(1)
            let val := sload(2)
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            return(0, len)
        }
    }
}

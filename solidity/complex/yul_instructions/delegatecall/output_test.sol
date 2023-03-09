// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract OutputTest {
    fallback() external {
        assembly {
            let len := sload(1)
            return(0, len)
        }
    }
}

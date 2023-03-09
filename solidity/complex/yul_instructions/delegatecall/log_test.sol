// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract LogTest {
    fallback() external {
        assembly {
            log0(0, 0)
        }
    }
}

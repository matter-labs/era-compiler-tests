// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract FailureTest {
    fallback() external {
        assembly {
            revert(0, 0)
        }
    }
}

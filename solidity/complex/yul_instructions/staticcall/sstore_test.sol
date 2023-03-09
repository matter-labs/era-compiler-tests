// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract SstoreTest {
    fallback() external {
        assembly {
            sstore(0, 0x42)
        }
    }
}

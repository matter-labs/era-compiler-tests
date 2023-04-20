// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract CodesizeTest {
    fallback() external {
        assembly {
            mstore(0, codesize())
            return(0, 32)
        }
    }
}

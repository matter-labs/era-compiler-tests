// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract InputTest {
    constructor() public {
        assembly {
            mstore(0, codesize())
            log0(0, 32)
        }
    }
}

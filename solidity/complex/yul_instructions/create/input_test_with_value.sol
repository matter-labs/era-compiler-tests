// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract InputTestWithValue {
    constructor() public {
        assembly {
            codecopy(0, 0, codesize())
            log0(0, codesize())
        }
    }
}

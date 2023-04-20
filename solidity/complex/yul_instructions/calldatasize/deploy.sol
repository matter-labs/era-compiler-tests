// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Deploy {
    constructor() public {
        assembly {
            mstore(0, calldatasize())
            log0(0, 32)
        }
    }
}

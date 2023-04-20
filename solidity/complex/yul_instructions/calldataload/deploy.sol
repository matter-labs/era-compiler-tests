// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

import "./main.sol";

contract Deploy {
    constructor() public {
        uint256 index = Main(msg.sender).s0();
        assembly {
            mstore(0, calldataload(index))
            log0(0, 32)
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

import "./main.sol";

contract Deploy {
    constructor() public {
        uint256 to = Main(msg.sender).s0();
        uint256 from = Main(msg.sender).s1();
        uint256 len = Main(msg.sender).s2();
        uint256 check = Main(msg.sender).s3();
        assembly {
            calldatacopy(to, from, len)

            if gt(check, 0) {
                for { let i := 0 } lt(i, len) { i := add(i, 1) }
                {
                    if iszero(eq(
                        shr(248, mload(add(to, i))),
                        0
                    )) {
                        mstore(0, 0)
                        log0(0, 32)
                        return(0, 0)
                    }
                }
            }

            mstore(0, 1)
            log0(0, 32)
        }
    }
}

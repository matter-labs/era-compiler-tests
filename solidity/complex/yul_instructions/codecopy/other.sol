// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

import "./main.sol";

contract Other {
    constructor() public {
        uint256 to = Main(msg.sender).s0();
        uint256 from = Main(msg.sender).s1();
        uint256 len = Main(msg.sender).s2();
        uint256 check = Main(msg.sender).s3();
        uint256 calldata_len = Main(msg.sender).s4();
        uint8 val = uint8(Main(msg.sender).s5());
        assembly {
            codecopy(to, from, len)

            if gt(check, 0) {
                for { let i := 0 } lt(i, len) { i := add(i, 1) }
                {
                    let expected := 0
                    if lt(add(from, i), calldata_len) {
                        expected := val
                    }
                    if iszero(eq(
                        shr(248, mload(add(to, i))),
                        expected
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

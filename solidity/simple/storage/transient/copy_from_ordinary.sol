//! { "modes": [ "Y" ], "cases": [ {
//!     "name": "main",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "12"
//!             ],
//!             "storage": { "Test.address": [
//!                 "3", "5", "2"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "2", "5", "3"
//!     ]
//! } ], "system_mode": true }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint256 field_1;
    uint256 field_2;
    uint256 field_3;

    function main() public view returns(uint256 z, uint256 y, uint256 x) {
        uint256 a = field_1;
        uint256 b = field_2;
        uint256 c = field_3;
        assembly {
            pop(staticcall(
                0,
                0xFFDA,
                a,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                1,
                0xFFDA,
                b,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                2,
                0xFFDA,
                c,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))

            x := staticcall(
                0,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
            y := staticcall(
                1,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
            z := staticcall(
                2,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
        }
    }
}

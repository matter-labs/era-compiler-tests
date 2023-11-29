//! { "modes": [ "Y" ], "cases": [ {
//!     "name": "main",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "42", "84", "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
//! } ], "system_mode": true }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b, uint256 x, uint256 y) public view returns(uint256) {
        uint256 c;
        uint256 d;

        assembly {
            pop(staticcall(
                x,
                0xFFDA,
                a,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                y,
                0xFFDA,
                b,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            c := staticcall(
                0,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
            d := staticcall(
                1,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
        }
        return c + d;
    }
}

//! { "modes": [
//!     "Y",
//!     "E- >=0.5.5",
//!     "E+ >=0.8.15",
//!     "I"
//! ], "cases": [ {
//!     "name": "main",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "exception": true
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function test() external returns (uint) {
        assembly {
            mstore(64, 1000000000000)
        }
    }
}

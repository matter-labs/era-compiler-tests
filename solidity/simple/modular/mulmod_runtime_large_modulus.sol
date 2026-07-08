//! { "cases": [ {
//!     "name": "bn254_scalar_field",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!                 "0x2000000000000000000000000000000000000000000000000000000000000000",
//!                 "0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000000",
//!                 "0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x10644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001"
//!     ]
//! }, {
//!     "name": "small",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!                 "7",
//!                 "8",
//!                 "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// Regression test for a mulmod miscompile on EraVM.

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Test {
    function f(uint256 a, uint256 b, uint256 m) external pure returns (uint256) {
        return mulmod(a, b, m);
    }
}

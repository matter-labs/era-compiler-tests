//! { "cases": [ {
//!     "name": "zero",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "one",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "small_ordinar",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "19"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "19"
//!     ]
//! }, {
//!     "name": "word",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "32"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "32"
//!     ]
//! }, {
//!     "name": "ordinar",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "2383"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "2383"
//!     ]
//! }, {
//!     "name": "ordinar_words",
//!     "inputs": [
//!         {
//!             "method": "test",
//!             "calldata": [
//!                 "0xF100"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xF100"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function test(uint256 len) external {
        assembly {
            let result := call(gas(), address(), 0, 0, len, 32, 32)
            mstore(0, result)
            return(0, 64)
        }
    }

    fallback() external {
        assembly {
            mstore(0, calldatasize())
            return(0, 32)
        }
    }
}

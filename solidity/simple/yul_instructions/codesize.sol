//! { "cases": [ {
//!     "name": "zero",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["0"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "one",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": "0x00"
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["1"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "small_ordinar",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": "0x00000000000000000000000000000000000000"
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["19"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "word",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": [ "0" ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["32"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "ordinar",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["46"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "ordinar_words",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": ["0", "0", "0", "0", "0", "0", "0", "0"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": ["*"],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["0x100"]
//!             }
//!         ]
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    constructor() public {
        assembly {
            mstore(0, codesize())
            log0(0, 32)
        }
    }
}

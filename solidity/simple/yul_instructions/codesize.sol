//! { "cases": [ {
//!     "name": "zero_deploy",
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
//!     "name": "one_deploy",
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
//!     "name": "small_ordinar_deploy",
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
//!     "name": "word_deploy",
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
//!     "name": "ordinar_deploy",
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
//!     "name": "ordinar_words_deploy",
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
//! }, {
//!     "name": "runtime",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": [
//!             ],
//!             "expected": {
//!                 "return_data": ["*"],
//!                 "events": [
//!                     {
//!                         "topics": [],
//!                         "values": ["0"]
//!                     }
//!                 ]
//!             }
//!         },
//!         {
//!             "method": "runtime",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    constructor() public {
        assembly {
            mstore(0, codesize())
            log0(0, 32)
        }
    }

    function runtime() external {
        assembly {
            mstore(0, eq(codesize(), extcodesize(address())))
            return(0, 32)
        }
    }
}

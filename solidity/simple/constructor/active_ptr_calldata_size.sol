//! { "targets": [ "EraVM" ], "enable_eravm_extensions": true, "modes": [ "Y" ], "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": [
//!                 "0x20",
//!                 "0x20",
//!                 "0x2a"
//!             ],
//!             "expected": [ "*" ]
//!         },
//!         {
//!             "method": "size",
//!             "calldata": [],
//!             "expected": [
//!                 "96"
//!             ]
//!         },
//!         {
//!             "method": "element",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    uint public size;
    uint public element;

    constructor(bytes memory) {
        uint calldata_size;
        uint calldata_element;
        assembly {
            pop(staticcall(
                0xFFFF,
                0xFFEB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            calldata_size := staticcall(
                0xFFFF,
                0xFFE2,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
            calldata_element := staticcall(
                64,
                0xFFE4,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            )
        }
        size = calldata_size;
        element = calldata_element;
    }
}

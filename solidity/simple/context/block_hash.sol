//! { "cases": [ {
//!     "name": "main",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373862"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    function main() public returns(bytes32) {
        bytes32 _blockhash = blockhash(block.number - 1);
        return _blockhash;
    }
}

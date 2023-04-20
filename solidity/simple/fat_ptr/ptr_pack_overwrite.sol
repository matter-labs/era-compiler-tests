//! { "system_mode": true,
//!     "modes": [ "Y" ],
//!     "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }  ] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity >=0.8.0;

contract Test {
    address constant ADDRESS_CONTRACT_DEPLOYER = 0x0000000000000000000000000000000000008006;

    function main() external returns(bool) {
        return this.create(0, address(this).codehash, "");
    }

    // Deployer call using calldata ptr.
    function create(
        bytes32, // salt
        bytes32 _bytecodeHash,
        bytes calldata _input
    ) external returns(bool success) {
        assembly {
            // load calldata ptr into active
            pop(staticcall(0, 0xFFEB, 0, 0xFFFF, 0, 0))
            // set system call flag
            pop(staticcall(shl(248, 1), 0xFFE7, 0, 0xFFFF, 0, 0))
            // set gas and forwarding mode (should overwrite system call flag)
            pop(staticcall(or(shl(192, gas()), shl(224, 1)), 0xFFE7, 0, 0xFFFF, 0, 0))
            // should be an exception as the system call flag should be overwritten.
            success := call(ADDRESS_CONTRACT_DEPLOYER, 0xFFF6, 0, 0, 0xFFFF, 0, 0)
        }
    }
}

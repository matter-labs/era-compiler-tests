//! { "ignore": true, "cases": [] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity >=0.8.0;

contract Identity {
    fallback() external {
        assembly {
            calldatacopy(0, 0, calldatasize())
            return(0, calldatasize())
        }
    }
}

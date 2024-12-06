//! { "ignore": true, "cases": [] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity >=0.8.0;

contract Forwarder {
    address immutable _target;

    constructor(address target) payable {
        _target = target;
    }

    fallback() external payable {
        address target = _target;

        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), target, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())

            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}

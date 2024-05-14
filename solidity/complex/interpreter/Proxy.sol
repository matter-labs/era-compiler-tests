// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract Proxy {
    fallback() external {
        assembly {
            calldatacopy(0, 0x20, sub(calldatasize(), 0x20))
            let benchmark := calldataload(0)
            let success := call(0x00ffffff, benchmark, 0, 0, sub(calldatasize(), 0x20), 0, 0)
            returndatacopy(0, 0, returndatasize())
            if success {
                return(0, returndatasize())
            }
            revert(0, returndatasize())
        }
    }
}

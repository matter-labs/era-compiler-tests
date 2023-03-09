// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract InputTestWithValue {
    fallback() external {
        assembly {
            let len := calldatasize()
            calldatacopy(0, 0, len)
            return(0, len)
        }
    }
}

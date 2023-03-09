// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract InputTest {
    fallback() external {
        assembly {
            mstore(0, calldatasize())
            return(0, 32)
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract InputTest {
    fallback() external payable {
        assembly {
            mstore(0, calldatasize())
            return(0, 32)
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract AddressTest {
    fallback() external {
        assembly {
            mstore(0, address())
            return(0, 32)
        }
    }
}

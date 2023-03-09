// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract GasTest {
    fallback() external {
        assembly {
            mstore(0, gas())
            return(0, 32)
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract SelfbalanceTest {
    fallback() external {
        assembly {
            mstore(0, selfbalance())
            return(0, 32)
        }
    }
}

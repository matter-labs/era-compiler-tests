// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract SloadTest {
    fallback() external {
        assembly {
            mstore(0, sload(0))
            return(0, 32)
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract CallerTest {
    fallback() external {
        assembly {
            mstore(0, caller())
            return(0, 32)
        }
    }
}

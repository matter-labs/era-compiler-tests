// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract ValueTest {
    fallback() external payable {
        assembly {
            mstore(0, callvalue())
            return(0, 32)
        }
    }
}

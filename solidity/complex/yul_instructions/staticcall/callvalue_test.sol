// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract CallvalueTest {
    fallback() external payable {
        assembly {
            mstore(0, callvalue())
            return(0, 32)
        }
    }
}

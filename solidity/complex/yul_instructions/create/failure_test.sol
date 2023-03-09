// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract FailureTest {
    constructor(bool fl) public {
        assembly {
            switch fl
            case 0 {
                return(0, 0)
            }
            case 1 {
                revert(0, 0)
            }
        }
    }
}

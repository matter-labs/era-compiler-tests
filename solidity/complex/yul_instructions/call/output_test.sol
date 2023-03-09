// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract OutputTest {
    function setLen(uint256 len) external {
        assembly {
            sstore(0, len)
        }
    }

    fallback() external {
        assembly {
            let len := sload(0)
            return(0, len)
        }
    }
}

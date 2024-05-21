// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Main {
    function main(uint256 _address) external view {
        assembly {
            let size := extcodesize(_address)
            mstore(0, gt(size, 0))
            if size {
                extcodecopy(_address, 32, 0, 32)
                return(0, 64)
            }
            revert(0, 0)
        }
    }
}

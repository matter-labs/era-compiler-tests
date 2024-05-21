// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Main {
    function main(uint256 _address) external view {
        assembly {
            mstore(0, gt(extcodesize(_address), 0))
            extcodecopy(_address, 32, 0, 32)
            return(0, 64)
        }
    }
}

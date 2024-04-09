// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract Proxy {
    function benchmark(address benchmark, address target) external {
        assembly {
            calldatacopy(0, 0x24, sub(calldatasize(), 0x24))
            let success := call(0x00ffffff, benchmark, 0, 0, sub(calldatasize(), 0x24), 0, 0)
            returndatacopy(0, 0, returndatasize())
            return(0, returndatasize())
        }
    }
}

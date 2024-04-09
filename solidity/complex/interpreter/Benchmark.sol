// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.20;

contract Benchmark {
    fallback() external {
        assembly {
            let target := calldataload(0)
            calldatacopy(0, 0x20, sub(calldatasize(), 0x20))
            let startGas := gas()
            let success := call(gas(), target, 0, 0, sub(calldatasize(), 0x20), 0, 0)
            let spentGas := sub(startGas, gas())
            mstore(0, spentGas)
            returndatacopy(0x20, 0, returndatasize())
            return(0, add(0x20, returndatasize()))
        }
    }
}
// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.24;

contract BenchmarkCaller {
    function call(address target) external returns (uint256 spentGas) {
        assembly {
            let startGas := gas()
            let success := call(startGas, target, 0, 0, 0, 0, 0)
            spentGas := sub(startGas, gas())
        }
    }
}
// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.24;

contract BenchmarkCaller {
    function compare(address target1, address target2) external returns (uint256 gasDiff) {
        assembly {
            let startGas1 := gas()
            let success1 := call(startGas1, target1, 0, 0, 0, 0, 0)
            let spentGas1 := sub(startGas1, gas())

            let startGas2 := gas()
            let success2 := call(startGas2, target2, 0, 0, 0, 0, 0)
            let spentGas2 := sub(startGas2, gas())

            gasDiff := sub(spentGas2, spentGas1)
        }
        return gasDiff;
    }
}
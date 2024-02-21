// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.24;

contract BenchmarkCaller {
    fallback(bytes calldata) external returns (bytes memory) {
        assembly {
            let target := calldataload(0)
            let startGas := gas()
            let success := call(startGas, target, 0, 0, 0, 0, 0)
            let endGas := sub(startGas, gas())

            mstore(0, endGas)
            if iszero(success) {
                revert(0, 32)
            }
            return(0, 32)
        }
    }
}
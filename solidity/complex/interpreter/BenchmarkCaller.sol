// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.24;

contract BenchmarkCaller {
    fallback(bytes calldata) external returns (bytes memory) {
        assembly {
            let target := calldataload(0)
            let startGas := gas()
            let success := call(1, target, 0, 0, 0, 0, 0)
            let endGas := gas()
            let spentGas := sub(startGas, endGas)

            mstore(0, spentGas)
            if iszero(success) {
                revert(0, 32)
            }
            return(0, 32)
        }
    }
}
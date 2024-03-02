// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24;

import "./BenchmarkCaller.sol";

contract Main {
    function benchmark(address caller, address target1, address target2) external returns (uint ratio) {
        BenchmarkCaller caller = BenchmarkCaller(caller);

        uint gasEraVM0 = gasleft();
        uint spentGasEVM1 = caller.call{gas: 2**24}(target1);
        uint spentGasEraVM1 = gasEraVM0 - gasleft();

        uint gasEraVM1 = gasleft();
        uint spentGasEVM2 = caller.call{gas: 2**24}(target2);
        uint spentGasEraVM2 = gasEraVM1 - gasleft();

        uint gasDiffEVM = spentGasEVM2 - spentGasEVM1;
        uint gasDiffEraVM = spentGasEraVM1 - spentGasEraVM2;
        ratio = gasDiffEraVM / gasDiffEVM;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24;

import "./BenchmarkCaller.sol";

contract Main {
    function benchmark(address caller, address target) external returns (uint spentGasEVM) {
        BenchmarkCaller caller = BenchmarkCaller(caller);
        spentGasEVM = caller.call{gas: 2**24}(target);
    }
}

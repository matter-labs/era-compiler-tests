// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24;

import "./BenchmarkCaller.sol";

contract Main {
    function benchmark(address caller, address target1, address target2) external returns (uint256 gasDiff) {
        BenchmarkCaller caller = BenchmarkCaller(caller);
        gasDiff = caller.compare{gas: 2**24}(target1, target2);
    }
}

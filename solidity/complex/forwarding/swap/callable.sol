// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Callable {
    function first() public pure returns (uint256) {
        return 1;
    }

    function second() public pure returns (uint256) {
        return 2;
    }

    function third() public pure returns (uint256) {
        return 3;
    }
}

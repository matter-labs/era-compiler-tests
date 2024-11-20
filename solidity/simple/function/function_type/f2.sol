//! { "targets": [ "eravm" ],
//!    "cases": [ {
//!     "name": "test",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "100"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract Test {
    uint a = 8;
    function() external returns (uint256) ft2;
    TestA testA;

    constructor() {
        testA = new TestA();
    }

    function f() public returns (uint256) {
        ft2 = this.f2;

        try testA.fA(ft2) returns (uint256 r) {
            return r;
        } catch {
            return 100;
        }
    }

    function f2() public returns (uint256) {
        return ft2();
    }
}

contract TestA {
    uint256 x = 1;

    function fA(
        function() external returns (uint256) _f
    ) public returns (uint256) {
        return x + _f();
    }
}

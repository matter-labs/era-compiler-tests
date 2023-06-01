//! { "modes": [ "Y" ], "comment": "TODO: https://linear.app/matterlabs/issue/CPR-532/implement-the-recursion-workaround", "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "tryAnyFunctionInAWhileLoop",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-952/statements-inside-loops-stack-overflow-error-in-the-zksolc

pragma solidity >=0.6.0;

contract Test {
    bool private testvar = true;

    function tryAnyFunctionInAWhileLoop() external returns (bool) {
        testvar = !testvar;
        return testvar;
    }

    function trier1bug() public {
        while (testvar) {
            testvar = !testvar;

            try this.tryAnyFunctionInAWhileLoop() returns (bool s) {
                if (s == testvar) break;
            } catch {  }
        }
    }
}

//! { "cases": [] }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-952/statements-inside-loops-stack-overflow-error-in-the-zksolc

pragma solidity ^0.6.12;

contract Test {
    bool private testvar = true;

    function tryAnyFunctionInAWhileLoop() external returns (bool) {
        testvar=!testvar;
        return testvar;
    }

    function trier1bug()  public {
         while (testvar) {
             testvar = !testvar;

             try this.tryAnyFunctionInAWhileLoop() returns (bool s) {
                 if (s == testvar) break;
             } catch {  }
        }
    }
}

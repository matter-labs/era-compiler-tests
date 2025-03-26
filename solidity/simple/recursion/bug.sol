//! { "cases": [ {
//!     "name": "f",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! }
//! ] }

pragma solidity >=0.4.12;

contract Test {
  function f(uint a) public returns (uint) {
    if (a == 1)
      return 10;
    return f(a);
  }
}

// ----
// f(uint256): 1 -> 10

#! { "cases": [ {
#!     "name": "min",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "5",
#!                 "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! } ] }

@external
def main(a: uint256, b: uint256) -> uint256:
    return min(a, b)

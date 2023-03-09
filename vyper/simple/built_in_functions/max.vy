#! { "cases": [ {
#!     "name": "max",
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
#!         "10"
#!     ]
#! } ] }

@external
def main(a: uint256, b: uint256) -> uint256:
    return max(a, b)

#! { "cases": [ {
#!     "name": "remainder_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "15"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "remainder_one",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "22"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7"
#!     ]
#! }, {
#!     "name": "remainder_two",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "26"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint256) -> uint256:
    variable: uint256 = 3
    return witness / variable

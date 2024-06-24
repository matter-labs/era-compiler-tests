#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "168"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256) -> uint256:
    return shift(a, -2)

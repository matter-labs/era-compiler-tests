#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "255"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "255"
#!     ]
#! } ] }

@external
@pure
def main(a: uint8) -> int128:
    return convert(a, int128)

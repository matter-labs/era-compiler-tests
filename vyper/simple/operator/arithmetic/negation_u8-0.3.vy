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
#!         "-42"
#!     ]
#! }, {
#!     "name": "max_to_min",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-127"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "200"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-200"
#!     ]
#! }, {
#!     "name": "overflow_minimal",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "129"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-129"
#!     ]
#! } ] }

@external
@pure
def main(a: uint8) -> int128:
    return -convert(a, int128)

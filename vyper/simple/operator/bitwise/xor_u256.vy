#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "zero_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0"
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
#!                 "42", "21"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "63"
#!     ]
#! }, {
#!     "name": "max_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "115792089237316195423570985008687907853269984665640564039457584007913129639935", "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return a ^ b

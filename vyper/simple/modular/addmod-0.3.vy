#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42",
#!                 "25",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42",
#!                 "25",
#!                 "24"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "19"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
#!     ]
#! } ] }

@external
@pure
def main(x: uint256, y: uint256, m: uint256) -> uint256:
    return uint256_addmod(x, y, m)
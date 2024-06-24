#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "81"
#!     ]
#! }, {
#!     "name": "ordinar_negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-4"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "80"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "147808829414345923316083210206383297601"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "100"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_minimal",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "81"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "max_pow_overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "340282366920938463463374607431768211455"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!         ],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: int128) -> int128:
    return (-3) ** a

#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "zero_by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "ordinar_by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "max_by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "255", "0"
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
#!                 "42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6"
#!     ]
#! }, {
#!     "name": "ordinar_max_remainder",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "48", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6"
#!     ]
#! }, {
#!     "name": "ordinar_next",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "49", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "255", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "255"
#!     ]
#! }, {
#!     "name": "to_one",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "255", "255"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def main(a: uint8, b: uint8) -> uint8:
    c: uint8 = a
    c //= b
    return c

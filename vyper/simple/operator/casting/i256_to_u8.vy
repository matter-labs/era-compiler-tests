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
#! }, {
#!     "name": "overflow_negative_minimal",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_positive_minimal",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "256"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1000"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: int256) -> uint8:
    return convert(a, uint8)

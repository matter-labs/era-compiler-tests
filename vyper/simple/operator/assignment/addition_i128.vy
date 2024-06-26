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
#!                 "-42", "25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-17"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "50000000000000000299999999999999999999", "120141183460469231431687303715884105728"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "170141183460469231731687303715884105727"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "120141183460469231431687303715884105728", "60000000000000000499999999999999999999"
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
#!                 "120141183460469231431687303715884105728", "50000000000000000300000000000000000000"
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
def main(a: int128, b: int128) -> int128:
    c: int128 = a
    c += b
    return c

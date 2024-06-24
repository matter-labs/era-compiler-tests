#! { "modes": [ "V <=0.3.10" ], "cases": [ {
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
#!     "name": "ordinar_true_lesser",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-25", "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_true_bigger",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "-25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_false_negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42", "-42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_false_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "min_min",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-128", "-128"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "max_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127", "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: int8, b: int8) -> bool:
    return a != b

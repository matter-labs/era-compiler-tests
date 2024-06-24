#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "false_false",
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
#!     "name": "false_true",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "true_false",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "true_true",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def main(a: bool, b: bool) -> bool:
    return a and b

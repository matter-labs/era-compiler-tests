#! { "modes": [ ">=0.3.9" ], "cases": [ {
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
#!     "name": "min_by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-128", "0"
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
#!                 "127", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "ordinar_positive",
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
#!     "name": "ordinar_negative_divided",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-6"
#!     ]
#! }, {
#!     "name": "ordinar_negative_divider",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-6"
#!     ]
#! }, {
#!     "name": "ordinar_negative_both",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42", "-7"
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
#!     "name": "to_min_from_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127", "-1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-127"
#!     ]
#! }, {
#!     "name": "to_min_from_negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-128", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-128"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! }, {
#!     "name": "to_one_positives",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127", "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "to_one_negatives",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-128", "-128"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "min_to_negative_ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-127", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-42"
#!     ]
#! }, {
#!     "name": "max_to_negative_ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "127", "-3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-42"
#!     ]
#! } ] }
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

@external
@pure
def main(a: int8, b: int8) -> int8:
    c: int8 = a
    c /= b
    return c

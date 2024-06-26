#! { "modes": [ "V <=0.3.10" ], "cases": [ {
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
#!                 "-170141183460469231731687303715884105728", "0"
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
#!                 "170141183460469231731687303715884105727", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "zero_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_divided",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_divider",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_both",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-42", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "45", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_divided",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-45", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_divider",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "45", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_both",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-45", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-3"
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
#!         "0"
#!     ]
#! }, {
#!     "name": "max_to_min",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "170141183460469231731687303715884105727"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "max_to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "85070591730234615865843651857942052864"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "85070591730234615865843651857942052863"
#!     ]
#! }, {
#!     "name": "min_to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105728", "170141183460469231731687303715884105727"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-1"
#!     ]
#! }, {
#!     "name": "min_to_negative_ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105727", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-1"
#!     ]
#! }, {
#!     "name": "max_to_negative_ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "-3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> int128:
    c: int128 = a
    c %= b
    return c

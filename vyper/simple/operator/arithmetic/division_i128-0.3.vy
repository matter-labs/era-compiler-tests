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
#!                 "170141183460469231731687303715884105727", "-1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-170141183460469231731687303715884105727"
#!     ]
#! }, {
#!     "name": "to_min_from_negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105728", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-170141183460469231731687303715884105728"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "170141183460469231731687303715884105727"
#!     ]
#! }, {
#!     "name": "to_one_positives",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "170141183460469231731687303715884105727"
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
#!                 "-170141183460469231731687303715884105727", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-56713727820156410577229101238628035242"
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
#!         "-56713727820156410577229101238628035242"
#!     ]
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> int128:
    return a / b
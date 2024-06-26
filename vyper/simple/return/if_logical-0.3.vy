#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "entry1",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! }, {
#!     "name": "false_true",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! }, {
#!     "name": "true_false",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! }, {
#!     "name": "true_true",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! } ] }

@external
@pure
def entry(first: bool, second: bool) -> uint8:
    result: uint8 = 1

    if first or second:
        result *= 2

    if first != second:
        result *= 2

    if first and second:
        result *= 2

    if not first:
        result *= 2

    if not second:
        result *= 2

    return result

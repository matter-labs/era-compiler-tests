#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "conditionTrue",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "conditionFalse",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! } ] }

@external
@pure
def main(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        result += 5

    return result

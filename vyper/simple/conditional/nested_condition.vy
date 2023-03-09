#! { "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "25"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint8) -> uint8:
    tmp: uint8 = 0

    if witness == 1:
        tmp = 2
    else:
        tmp = 3

    if tmp == 2:
        return 25
    else:
        return 42

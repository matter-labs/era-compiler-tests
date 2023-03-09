#! { "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "first",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "second",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "99"
#!     ]
#! } ] }

@external
@pure
def first() -> uint8:
    result: uint8 = 42
    return result

@external
@pure
def second() -> uint256:
    result: uint256 = 99
    return result

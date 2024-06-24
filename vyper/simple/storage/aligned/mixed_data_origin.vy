#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "5", "7"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "148"
#!     ]
#! } ] }

SOMETHING: constant(uint256) = 42
SOMETHING_ELSE: constant(uint256) = 88

struct Data:
    c: uint256
    d: uint256

a: uint256
b: uint256

@internal
def inner(data: Data, _value: uint256, literal: uint8) -> uint256:
    return ((self.a + data.c + self.b + data.d + _value) * convert(literal, uint256) * SOMETHING - SOMETHING_ELSE) // 1000

@external
def main(_value: uint256) -> uint256:
    data: Data = Data({c: 10, d: 20})

    return self.inner(data, _value, 42)

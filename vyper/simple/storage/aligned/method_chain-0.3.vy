#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "5", "11"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "1024"
#!     ]
#! } ] }

a: uint256
b: uint256

@internal
def double(_value: uint256) -> uint256:
    return _value * 2

@internal
def triple(_value: uint256) -> uint256:
    return 3 * _value

@internal
def quadruple(_value: uint256) -> uint256:
    return _value * 4

@external
def main(_value: uint256) -> uint256:
    return self.a + self.quadruple(self.triple(self.double(_value))) + self.b

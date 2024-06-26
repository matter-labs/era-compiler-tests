#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
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
#!             "method": "main",
#!             "calldata": [
#!                 "64"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! }, {
#!     "name": "third",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "65535"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "65535"
#!     ]
#! } ] }

struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data(a=a)

@external
def main(witness: uint256) -> uint256:
    return self._new(witness).a


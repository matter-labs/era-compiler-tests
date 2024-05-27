#! { "modes": [ "V =0.3.3" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "caller": "0x0000000000000000000000000000000000000099",
#!             "calldata": [],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "x",
#!             "calldata": [],
#!             "expected": [
#!                 "42"
#!             ]
#!         },
#!         {
#!             "method": "I",
#!             "calldata": [],
#!             "expected": [
#!                 "43"
#!             ]
#!         }
#!     ],
#!     "expected": [ "43" ]
#! } ] }

# @version 0.3.3

X: immutable(bytes32)
Y: immutable(bytes32)
Z: immutable(String[64])

@external
def __init__():
    X = convert(42, bytes32)
    Y = convert(43, bytes32)
    Z = "Test"

@external
def x() -> bytes32:
    return X

@external
def y() -> bytes32:
    return Y
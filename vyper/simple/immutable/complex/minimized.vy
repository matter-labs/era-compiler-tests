#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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
#!             "method": "X",
#!             "calldata": [],
#!             "expected": [
#!                 "42"
#!             ]
#!         },
#!         {
#!             "method": "Y",
#!             "calldata": [],
#!             "expected": [
#!                 "43"
#!             ]
#!         }
#!     ],
#!     "expected": [ "43" ]
#! } ] }

X: public(immutable(bytes32))
Y: public(immutable(bytes32))
Z: public(immutable(String[64]))

@deploy
def __init__():
    X = convert(42, bytes32)
    Y = convert(43, bytes32)
    Z = "Test"

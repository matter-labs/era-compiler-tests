#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "20", "15", "10", "5"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15000"
#!     ]
#! } ] }

struct Data:
    a: uint256
    b: uint256
    c: uint256
    d: uint256

data: immutable(Data)

@deploy
def __init__(input: Data):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= data.a
    product *= data.b
    product *= data.c
    product *= data.d
    return product

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
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "20", "15", "10", "5"
#!     ]
#! } ] }

struct Data:
    a: uint8
    b: uint8
    c: uint8
    d: uint8

data: immutable(Data)

@deploy
def __init__(input: Data):
    data = input

@external
def main() -> Data:
    return data

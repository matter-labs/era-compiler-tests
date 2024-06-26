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
#!         "50"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

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
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    sum += convert(data.a, uint8)
    sum += convert(data.b, uint8)
    sum += convert(data.c, uint8)
    sum += convert(data.d, uint8)
    return sum

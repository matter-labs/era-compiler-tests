#! { "modes": [ "V <=0.3.10" ], "cases": [ {
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
    a: uint8
    b: uint8
    c: uint8
    d: uint8

data: immutable(Data)

@external
def __init__(input: Data):
    data = input

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    sum += data.a
    sum += data.b
    sum += data.c
    sum += data.d
    return sum

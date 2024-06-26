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
#!         "15000"
#!     ]
#! } ] }

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
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= convert(data.a, uint256)
    product *= convert(data.b, uint256)
    product *= convert(data.c, uint256)
    product *= convert(data.d, uint256)
    return product

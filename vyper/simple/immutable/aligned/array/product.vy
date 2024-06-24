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

data: immutable(uint256[4])

@deploy
def __init__(input: uint256[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i: uint256 in range(0, 4):
        product *= data[i]
    return product

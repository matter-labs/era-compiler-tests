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

data: immutable(uint256[4])

@external
def __init__(input: uint256[4]):
    data = input

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i in range(0, 4):
        sum += convert(data[i], uint8)
    return sum

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

data: immutable(uint256[4])

@deploy
def __init__(input: uint256[4]):
    data = input

@external
def main() -> uint256[4]:
    return data

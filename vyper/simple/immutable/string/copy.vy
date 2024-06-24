#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "32", "8", "0x0102030405060708000000000000000000000000000000000000000000000000"
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
#!         "32", "8", "0x0102030405060708000000000000000000000000000000000000000000000000"
#!     ]
#! } ] }

data: immutable(String[8])

@deploy
def __init__(input: String[8]):
    data = input

@external
def main() -> String[8]:
    return data

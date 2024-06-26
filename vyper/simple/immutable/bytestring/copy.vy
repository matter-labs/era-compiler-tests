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

data: immutable(Bytes[8])

@deploy
def __init__(input: Bytes[8]):
    data = input

@external
def main() -> Bytes[8]:
    return data

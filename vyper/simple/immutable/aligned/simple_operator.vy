#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "0x03",
#!                 "0x05",
#!                 "0x02"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "12"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

field_1: immutable(uint256)
field_2: immutable(uint256)
field_3: immutable(uint256)

@deploy
def __init__(a: uint256, b: uint256, c: uint256):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return witness + convert(field_1, uint8) * convert(field_2, uint8) * convert(field_3, uint8)

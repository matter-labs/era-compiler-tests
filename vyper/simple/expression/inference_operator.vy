#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64516"
#!     ]
#! } ] }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint256:
    return 65536 - 255 * convert(witness, uint256)

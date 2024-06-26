#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "158"
#!     ]
#! } ] }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint8:
    conditional: uint8 = 0
    if SCRUTINEE == 64:
        conditional = 100
    else:
        conditional = 200
    return conditional - witness
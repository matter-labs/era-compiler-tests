#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "50"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "75"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint8) -> uint8:
    inner: uint8 = 25
    inner += witness
    return inner

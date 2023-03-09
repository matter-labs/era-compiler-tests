#! { "cases": [ {
#!     "name": "conditionTrue",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0", "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1000256"
#!     ]
#! }, {
#!     "name": "conditionFalse",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0", "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

struct Data:
    a: bool
    b: uint8
    c: uint256

@external
@pure
def main(_witness: Data, condition:bool) -> uint256:
    witness: Data = _witness
    if condition:
        witness = Data({
            a: True,
            b: 255,
            c: 1000000
        })

    if witness.a:
        return 1 + convert(witness.b, uint256) + witness.c
    else:
        return 0 + convert(witness.b, uint256) + witness.c

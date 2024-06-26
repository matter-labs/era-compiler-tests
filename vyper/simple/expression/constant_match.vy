#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "one",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "58"
#!     ]
#! }, {
#!     "name": "two",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "100"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint8:
    _match: uint8 = 0
    if SCRUTINEE == 0:
        _match = 10
    elif SCRUTINEE == 1:
        _match = 20
    elif SCRUTINEE == 42:
        _match = 100
    else:
        _match = 255 - SCRUTINEE
    return _match - witness

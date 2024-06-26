#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! } ] }

SIZE: constant(uint8) = 4

@external
@pure
def main(_array: uint8[SIZE]) -> uint8:
    array: uint8[SIZE] = _array
    array[3] = 106
    array[1] = 42

    return array[3] - array[1]

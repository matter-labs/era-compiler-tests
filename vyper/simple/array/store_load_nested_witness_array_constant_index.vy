#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4",
#!                 "5", "6", "7", "8",
#!                 "9", "10", "11", "12",
#!                 "13", "14", "15", "16"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! } ] }

SIDE_SIZE: constant(uint8) = 4

@external
@pure
def main(_array: uint8[SIDE_SIZE][SIDE_SIZE]) -> uint8:
    array: uint8[SIDE_SIZE][SIDE_SIZE] = _array
    array[3][1] = 106
    array[1][3] = 42
    return array[3][1] - array[1][3]

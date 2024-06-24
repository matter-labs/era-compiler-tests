#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "55"
#!     ]
#! } ] }

ARRAY_SIZE: constant(uint8) = 10

@external
@pure
def main(array: uint8[ARRAY_SIZE]) -> uint8:
    sum: uint8 = 0
    for i: uint8 in range(0, ARRAY_SIZE):
        sum += array[i]
    return sum

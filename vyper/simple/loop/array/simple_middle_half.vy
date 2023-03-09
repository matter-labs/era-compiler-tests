#! { "cases": [ {
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
#!         "30"
#!     ]
#! } ] }

ARRAY_SIZE: constant(uint8) = 10

@external
@pure
def main(array: uint8[ARRAY_SIZE]) -> uint8:
    sum: uint8 = 0
    for i in range(3, 8):
        sum += array[i]
    return sum

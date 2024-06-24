#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "10", "20", "30", "40", "50", "6"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "218"
#!     ]
#! } ] }

SIZE: constant(uint8) = 5

@external
@pure
def main(_array: uint8[SIZE], witness: uint8) -> uint8:
    array: uint8[SIZE] = _array
    array[0] += witness
    array[1] -= witness
    array[2] *= witness
    array[3] //= witness
    array[4] %= witness
    return array[0] + array[1] + array[2] + array[3] + array[4]

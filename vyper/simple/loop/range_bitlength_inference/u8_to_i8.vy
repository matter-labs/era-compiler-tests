#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-10"
#!     ]
#! } ] }

@external
@pure
def main() -> int8:
    sum: int8 = 0
    for i: int8 in range(-10, 10):
        sum += i
    return sum

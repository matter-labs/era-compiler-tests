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
#!         "-128"
#!     ]
#! } ] }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i: uint256 in range(-128, 128):
        sum += i
    return sum

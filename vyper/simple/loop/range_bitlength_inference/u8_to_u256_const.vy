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
#!         "55"
#!     ]
#! } ] }

LIMIT: constant(uint256) = 11

@external
@pure
def main() -> uint256:
    sum: uint256 = 0
    for i: uint256 in range(0, LIMIT):
        sum += i
    return sum

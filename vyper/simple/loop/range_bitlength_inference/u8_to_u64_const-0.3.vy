#! { "modes": [ "V 0.3.9", "V 0.3.10" ], "cases": [ {
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

LIMIT: constant(uint64) = 10

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(0, LIMIT + 1):
        sum += i
    return sum

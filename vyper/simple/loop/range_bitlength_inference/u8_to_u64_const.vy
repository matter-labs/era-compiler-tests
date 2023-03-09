#! { "ignore": true, "cases": [ {
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
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

LIMIT: constant(uint64) = 10

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(0, LIMIT + 1):
        sum += i
    return sum

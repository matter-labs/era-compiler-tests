#! { "modes": [ "V >=0.3.9" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! } ] }

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(2147483637, 2147483647):
        sum += 1
    return sum

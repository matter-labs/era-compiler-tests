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
    for i in range(-9223372036854775808, -9223372036854775798):
        sum += 1
    return sum

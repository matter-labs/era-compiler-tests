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
#!         "10"
#!     ]
#! } ] }
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(18446744073709551605, 18446744073709551615):
        sum += 1
    return sum

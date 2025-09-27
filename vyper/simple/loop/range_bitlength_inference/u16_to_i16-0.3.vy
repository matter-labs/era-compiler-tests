#! { "modes": [ "V =0.3.9", "V =0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-200"
#!     ]
#! } ] }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-200, 200):
        sum += i
    return sum

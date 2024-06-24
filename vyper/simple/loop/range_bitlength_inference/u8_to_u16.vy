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
#!         "2545"
#!     ]
#! } ] }

@external
@pure
def main() -> uint16:
    sum: uint16 = 0
    for i: uint256 in range(250, 260):
        sum += i
    return sum

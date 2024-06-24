#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "0x14",
#!                 "0x0f",
#!                 "0x0a",
#!                 "0x05"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! } ] }

data: uint8[4]

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i: uint256 in range(0, 4):
        sum += self.data[i]
    return sum

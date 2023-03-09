#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "0x01",
#!                 "0x02",
#!                 "0x03",
#!                 "0x04"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

data: uint8[4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3] = argument

    return argument + TEST + self.data[3]

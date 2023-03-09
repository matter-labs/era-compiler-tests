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
#!                 "0x04",
#!                 "0x05",
#!                 "0x06",
#!                 "0x07",
#!                 "0x08",
#!                 "0x09",
#!                 "0x10",
#!                 "0x11",
#!                 "0x12",
#!                 "0x13",
#!                 "0x14",
#!                 "0x15",
#!                 "0x16"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

data: uint8[4][4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3][3] = argument

    return argument + TEST + self.data[3][3]

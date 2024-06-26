#! { "modes": [ "V <=0.3.10" ], "cases": [ {
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
#!                 "0x0a",
#!                 "0x0b",
#!                 "0x0c",
#!                 "0x0d",
#!                 "0x0e",
#!                 "0x0f",
#!                 "0x10"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "142"
#!     ]
#! } ] }

data: uint8[4][4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3][3] += argument

    return argument + TEST + self.data[3][3]

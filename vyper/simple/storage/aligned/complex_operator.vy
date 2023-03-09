#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "16"
#!             ],
#!             "storage": { "Test.address": [
#!                 "3", "5", "2"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "81"
#!     ]
#! } ] }

field_1: uint256
field_2: uint256
field_3: uint256

@external
def main(witness: uint8) -> uint8:
    return 19 * 3 - 8 / convert(self.field_1, uint8) + (witness / (convert(self.field_2, uint8) - 3) + 5) * (8 / convert(self.field_3, uint8) / 2)

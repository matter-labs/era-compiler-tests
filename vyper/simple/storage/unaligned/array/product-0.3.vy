#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "0x0014",
#!                 "0x000f",
#!                 "0x000a",
#!                 "0x0005"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "15000"
#!     ]
#! } ] }

data: uint8[4]

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i in range(0, 4):
        product *= convert(self.data[i], uint256)
    return product

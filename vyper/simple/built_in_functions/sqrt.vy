#! { "modes": [ "V >=0.4.2" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "141421"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "56473894349834"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "751491146653"
#!     ]
#! } ] }

# pragma enable-decimals
import math

@external
@pure
def main(a: int256) -> int256:
    return floor(math.sqrt(convert(a, decimal))*100000.0)

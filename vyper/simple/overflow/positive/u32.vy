#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "4294967295"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(witness: uint32) -> uint32:
    return witness + 1

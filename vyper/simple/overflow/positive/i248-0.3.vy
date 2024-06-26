#! { "modes": [ "V 0.3.9", "V 0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "226156424291633194186662080095093570025917938800079226639565593765455331327"
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
def main(witness: int248) -> int248:
    return witness + 1

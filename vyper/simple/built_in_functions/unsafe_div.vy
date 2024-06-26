#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "1212121242342345346456456", "234234234"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5174825309020991"
#!     ]
#! }, {
#!     "name": "by_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "24234234534545674578687458968945", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: int256, b: int256) -> int256:
    return unsafe_div(a, b)

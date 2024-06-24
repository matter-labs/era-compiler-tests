#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "one",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "120"
#!     ]
#! }, {
#!     "name": "two",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "6"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "720"
#!     ]
#! }, {
#!     "name": "three",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5040"
#!     ]
#! } ] }

@external
@pure
def main(n: uint8) -> uint256:
    fact: uint256 = 1
    for i in range(1, 100):
        if not i <= n:
            break
        fact *= convert(i, uint256)
    return fact

#! { "cases": [ {
#!     "name": "positive",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "456789765435678908765"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "456789765435678908765"
#!     ]
#! }, {
#!     "name": "negative",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "-3423453453453453454567897345346789345340584375465"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3423453453453453454567897345346789345340584375465"
#!     ]
#! } ] }

@external
@pure
def main(a: int256) -> int256:
    return abs(a)

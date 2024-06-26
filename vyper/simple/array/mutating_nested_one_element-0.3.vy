#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-204/2-dimensional-array-bug

@external
@pure
def test() -> uint256:
    a: uint256[1][1] = [[0]]
    a[0][0] = a[0][0]
    return 1

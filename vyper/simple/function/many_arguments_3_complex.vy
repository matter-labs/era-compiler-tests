#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "entry",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "31", "0", "0", "0", "0", "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-179/many-arguments-bug

struct Str1:
    a: uint256

@external
@pure
def entry(param: uint8, p3: uint256, p4: uint256, p5: uint256, p6: uint256, p7: uint256, p8: Str1) -> uint256:
    if param == 31:
        return p8.a
    else:
        return 1

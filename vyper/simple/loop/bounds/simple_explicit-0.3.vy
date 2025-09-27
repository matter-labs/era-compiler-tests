#! { "modes": [ "V =0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "foo",
#!             "calldata": [
#!                 "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15"
#!     ]
#! } ] }

@external
def foo(end: uint256) -> uint256:
    x: uint256 = 0
    for i in range(end, bound=6):
        x += i
    return x
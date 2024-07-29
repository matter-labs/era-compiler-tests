#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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
def foo(stop: uint256) -> uint256:
    x: uint256 = 0
    for i: uint256 in range(stop, bound=6):
        x += i
    return x
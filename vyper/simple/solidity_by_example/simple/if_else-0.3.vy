#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "foo_1",
#!     "inputs": [
#!         {
#!             "method": "foo",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "foo_15",
#!     "inputs": [
#!         {
#!             "method": "foo",
#!             "calldata": [
#!                 "15"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "foo_123132213123",
#!     "inputs": [
#!         {
#!             "method": "foo",
#!             "calldata": [
#!                 "123132213123"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! } ] }

@external
@pure
def foo(x: uint256) -> uint256:
    if x < 10:
        return 0
    elif x < 20:
        return 1
    else:
        return 2

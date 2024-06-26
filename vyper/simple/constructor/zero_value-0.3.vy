#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "32"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "_get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-296/bug-with-constructor

a: public(uint256)

# if remove constructor or param - it works
@external
def __init__(b: uint256):
    self.a = 0

@external
@view
def _get() -> uint256:
    return self.a

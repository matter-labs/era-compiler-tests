#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "success",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "5", "42"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

x: uint256
y: uint256

@internal
def set(b: uint256):
    self.y = b

@deploy
def __init__(a: uint256, b: uint256):
    self.x = a
    self.set(b)

@external
@view
def get() -> uint256:
    return self.y

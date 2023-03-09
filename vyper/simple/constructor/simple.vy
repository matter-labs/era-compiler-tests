#! { "cases": [ {
#!     "name": "success",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "7", "6", "0"
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
#! }, {
#!     "name": "failure",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "7", "6", "1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!          "return_data": [],
#!          "exception": true
#!     }
#! } ] }

c: uint256

@external
def __init__(a: uint256, b: uint256, shouldRevert: bool):
    self.c = a * b
    assert not shouldRevert

@external
@view
def get() -> uint256:
    return self.c

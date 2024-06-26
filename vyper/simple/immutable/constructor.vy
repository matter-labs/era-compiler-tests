#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "caller": "0x0000000000000000000000000000000000000099",
#!             "calldata": [
#!                 "25", "42"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "get_a",
#!             "calldata": [],
#!             "expected": [ "25" ]
#!         },
#!         {
#!             "method": "get_b",
#!             "calldata": [],
#!             "expected": [ "0x99" ]
#!         },
#!         {
#!             "method": "get_c",
#!             "calldata": [],
#!             "expected": [ "42" ]
#!         }
#!     ],
#!     "expected": [ "42" ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-288/implement-the-setimmutable-and-loadimmutable-functions

a: immutable(uint256)
b: immutable(address)
c: immutable(uint8)

@deploy
def __init__(x: uint256, y: uint8):
    a = x
    b = msg.sender
    c = y

@external
def get_a() -> uint256:
    return a

@external
def get_b() -> address:
    return b

@external
def get_c() -> uint8:
    return c

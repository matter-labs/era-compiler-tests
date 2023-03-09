#! { "cases": [ {
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
#!             "method": "a",
#!             "calldata": [],
#!             "expected": [ "25" ]
#!         },
#!         {
#!             "method": "b",
#!             "calldata": [],
#!             "expected": [ "0x99" ]
#!         },
#!         {
#!             "method": "c",
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

@external
def __init__(x: uint256, y: uint8):
    a = x
    b = msg.sender
    c = y

@external
def a() -> uint256:
    return a

@external
def b() -> address:
    return b

@external
def c() -> uint8:
    return c

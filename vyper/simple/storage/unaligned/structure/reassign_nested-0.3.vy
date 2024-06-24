#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "Test.address": [
#!                 "0x63",
#!                 "0x64",
#!                 "0x65"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "226"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

struct Inner:
    value: uint8
    next: uint8
    last: uint8

struct Data:
    inner: Inner

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.inner.next += argument

    return argument + TEST + self.data.inner.next

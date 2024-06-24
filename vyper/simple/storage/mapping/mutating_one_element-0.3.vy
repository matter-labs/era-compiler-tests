#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "f",
#!     "inputs": [
#!         {
#!             "method": "f",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-220/mapping-test-failure

m1: HashMap[uint8, uint8]

@external
def f() -> uint8:
    self.m1[1] = 42
    return self.m1[1]

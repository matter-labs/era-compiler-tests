#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-720/dynarray-init-in-constructor-bug

inner: DynArray[uint256, 1]

@deploy
def __init__():
    self.inner = [0]

@external
def test() -> uint256:
    return len(self.inner)

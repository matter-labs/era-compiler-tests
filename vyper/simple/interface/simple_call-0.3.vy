#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-581/require-in-external-call-failure-for-b1-b3

interface Self:
    def f(): pure

@external
@pure
def f():
    assert True

@external
@view
def entry():
    Self(self).f()

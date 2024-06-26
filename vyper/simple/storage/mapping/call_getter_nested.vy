#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "g",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!       "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-611/nested-external-calls-issue

interface Self:
    def h() -> uint256: nonpayable
    def f() -> uint256: nonpayable

@external
def h() -> uint256:
    return 1

@external
def f() -> uint256:
    return extcall Self(self).h()

@external
def g() -> uint256:
    return extcall Self(self).f()

#! { "modes": [ ">=0.3.9" ], "cases": [ {
#!     "name": "_default",
#!     "inputs": [
#!         {
#!             "method": "_default",
#!             "calldata": [
#!                 "512"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1024"
#!     ]
#! } ] }
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

@external
@pure
def _default(_value: uint248) -> uint248:
    return _value * 2

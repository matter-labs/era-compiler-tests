#! { "modes": [ "V 0.3.9", "V 0.3.10" ], "cases": [ {
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

@external
@pure
def _default(_value: uint248) -> uint248:
    return _value * 2

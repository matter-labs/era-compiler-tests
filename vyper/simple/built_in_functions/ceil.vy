#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "-3534534645645544566"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-35345346456455"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "564738934349834"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5647389344"
#!     ]
#! } ] }

# pragma enable-decimals
@external
@pure
def main(a: int256) -> int256:
    return ceil(convert(a, decimal)/100000.0)

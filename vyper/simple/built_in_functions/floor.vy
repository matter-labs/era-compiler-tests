#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                  "-3534534645645544567"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-35345346456456"
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
#!         "5647389343"
#!     ]
#! } ] }

@external
@pure
def main(a: int256) -> int256:
    return floor(convert(a, decimal)/100000.0)

#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "168", "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

struct Inner:
    value: uint8

struct Data:
    inner: Inner

@external
@pure
def main(data: Data, divider: uint8) -> Data:
    _data: Data = data
    _data.inner.value //= divider
    return _data

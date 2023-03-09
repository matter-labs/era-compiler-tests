#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15"
#!     ]
#! } ] }

struct Inner:
    value: uint8

struct Data:
    inner: Inner

DATA: constant(Data) = Data({inner: Inner({value: 5})})

@external
@pure
def main(witness: uint8) -> uint8:
    return DATA.inner.value * witness

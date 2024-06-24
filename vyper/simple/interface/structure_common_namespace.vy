#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "210"
#!     ]
#! } ] }

struct Data:
    factor: uint8

@internal
@pure
def test(data: Data, witness: uint8) -> uint8:
    return witness * data.factor

@external
def main(witness: uint8) -> uint8:
    data: Data = Data({factor: 5})
    return self.test(data, witness)

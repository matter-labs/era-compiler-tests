#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "2", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "131"
#!     ]
#! } ] }

struct Data:
    a: uint8
    b: uint8
    c: uint8

@internal
@pure
def fill(data: Data, values: uint8[3]) -> Data:
    data.a = values[0]
    data.b = values[1]
    data.c = values[2]
    return data

@external
def main(witness: Data) -> uint8:
    filled: Data = self.fill(witness, [25, 42, 64])
    return filled.a + filled.b + filled.c

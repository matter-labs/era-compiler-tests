#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "16"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! } ] }

struct Entry1:
    a: bool
    b: uint8[2]

struct Entry2:
    a: uint8
    b: uint8[4]

struct Data:
    a: Entry1
    b: Entry2

@internal
@pure
def foo() -> (Data):
    return Data(
        a=Entry1(a=False, b=[8, 9]),
        b=Entry2(a=1, b=[2, 3, 4, 5])
    )

@external
def main(witness: uint8) -> uint8:
    return witness * self.foo().b.b[2]

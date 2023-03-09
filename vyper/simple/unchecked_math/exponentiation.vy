#! { "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "32",
#!                 "34"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1496577676626844588240573268701473812127674924007424"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2223223",
#!                 "344313"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "100285653084869015597090712088097646536078582653240989835715781990963135627703"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return pow_mod256(a, b)

#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1008"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "64"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1536"
#!     ]
#! }, {
#!     "name": "third",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1000000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "24000000"
#!     ]
#! } ] }


struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data({a: a})

@internal
@pure
def double(data: Data) -> Data:
    return Data({a: data.a * 2})

@internal
@pure
def triple(data: Data) -> Data:
    return Data({a: data.a * 3})

@internal
@pure
def quadruple(data: Data) -> Data:
    return Data({a: data.a * 4})

@internal
@pure
def intoInner(data: Data) -> uint256:
    return data.a

@external
def main(witness: uint256) -> uint256:
    return self.intoInner(
        self.quadruple(
            self.triple(
                self.double(
                    self._new(witness)
                )
            )
        )
    )

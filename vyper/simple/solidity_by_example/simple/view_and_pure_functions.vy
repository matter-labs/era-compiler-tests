#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "addToXFirst",
#!     "inputs": [
#!         {
#!             "method": "addToX",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "addToXSecond",
#!     "inputs": [
#!         {
#!             "method": "addToX",
#!             "calldata": [
#!                 "67234736412121212"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "67234736412121213"
#!     ]
#! }, {
#!     "name": "addFirst",
#!     "inputs": [
#!         {
#!             "method": "_add",
#!             "calldata": [
#!                 "2", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! }, {
#!     "name": "addSecond",
#!     "inputs": [
#!         {
#!             "method": "_add",
#!             "calldata": [
#!                 "782438347287334342", "512356125631255135132125661271278"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "512356125631255917570472948605620"
#!     ]
#! } ] }

x: public(uint256)

@deploy
def __init__():
    self.x = 1

# Promise not to modify the state.
@external
@view
def addToX(y: uint256) -> uint256:
    return self.x + y

# Promise not to modify or read from the state.
@external
@pure
def _add(i: uint256, j: uint256) -> uint256:
    return i + j

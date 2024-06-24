#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "returnMany",
#!     "inputs": [
#!         {
#!             "method": "returnMany",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "1", "2"
#!     ]
#! }, {
#!     "name": "destructingAssigments",
#!     "inputs": [
#!         {
#!             "method": "destructingAssigments",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "1", "2", "4", "6"
#!     ]
#! }, {
#!     "name": "arrayInput",
#!     "inputs": [
#!         {
#!             "method": "arrayInput",
#!             "calldata": [
#!                 "1",
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!     ]
#! }, {
#!     "name": "arrayOutput",
#!     "inputs": [
#!         {
#!             "method": "arrayOutput",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0",
#!         "0"
#!     ]
#! } ] }


# Functions can return multiple values.
@external
@pure
def returnMany() -> (uint256, bool, uint256):
    return (1, True, 2)

@internal
@pure
def returnManyInternal() -> (uint256, bool, uint256):
    return (1, True, 2)

# Use destructing assignment when calling another
# function that returns multiple values.
@external
def destructingAssigments() -> (uint256, bool, uint256, uint256, uint256):
    i: uint256 = 0
    b: bool = False
    j: uint256 = 0
    (i, b, j) = self.returnManyInternal()

    x: uint256 = 0
    y: uint256 = 0
    x = 4
    y = 6

    return (i, b, j, x, y)

# Cannot use map for neither input nor output

# Can use array for input
@external
def arrayInput(_arr: uint256[2]):
    pass

# Can use array for output
arr: public(uint256[2])

@external
@view
def arrayOutput() -> uint256[2]:
    return self.arr

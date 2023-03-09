#! { "cases": [ {
#!     "name": "element1",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "element2",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! }, {
#!     "name": "element3",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "element4",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! }, {
#!     "name": "element5",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "element6",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6"
#!     ]
#! }, {
#!     "name": "element7",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7"
#!     ]
#! }, {
#!     "name": "element8",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! }, {
#!     "name": "element9",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "9"
#!     ]
#! } ] }

SIDE_SIZE: constant(uint8) = 3

@external
@pure
def main(i: uint8, j: uint8) -> uint8:
    array: uint8[SIDE_SIZE][SIDE_SIZE] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    return array[i][j]

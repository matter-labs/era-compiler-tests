#! { "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "push",
#!             "calldata": [
#!                 "10"
#!             ]
#!         }, {
#!             "method": "getLength",
#!             "calldata": [
#!             ],
#!              "expected": [
#!                 "1"
#!             ]
#!         }, {
#!             "method": "get",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "push",
#!             "calldata": [
#!                 "37848742"
#!             ]
#!         }, {
#!             "method": "push",
#!             "calldata": [
#!                 "523542342"
#!             ]
#!         }, {
#!             "method": "pop_",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "getLength",
#!             "calldata": [
#!             ],
#!              "expected": [
#!                 "1"
#!             ]
#!         }, {
#!             "method": "push",
#!             "calldata": [
#!                 "78347834"
#!             ]
#!         }, {
#!             "method": "push",
#!             "calldata": [
#!                 "23515365423543245"
#!             ]
#!         }, {
#!             "method": "remove",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }, {
#!             "method": "getLength",
#!             "calldata": [
#!             ],
#!              "expected": [
#!                 "3"
#!             ]
#!         }, {
#!             "method": "getArr",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x20",
#!         "3",
#!         "37848742",
#!         "0",
#!         "23515365423543245"
#!     ]
#! }, {
#!     "name": "popEmpty",
#!     "inputs": [
#!         {
#!             "method": "pop_",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "defaultGetter",
#!     "inputs": [
#!         {
#!             "method": "arr2",
#!             "calldata": [
#!                 "0"
#!             ],
#!              "expected": [
#!                 "1"
#!             ]
#!         }, {
#!             "method": "arr2",
#!             "calldata": [
#!                 "1"
#!             ],
#!              "expected": [
#!                 "2"
#!             ]
#!         }, {
#!             "method": "arr2",
#!             "calldata": [
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "fixedSizeArray",
#!     "inputs": [
#!         {
#!             "method": "myFixedSizeArr",
#!             "calldata": [
#!                 "9"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "examples",
#!     "inputs": [
#!         {
#!             "method": "examples",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!     ]
#! } ] }

# Several ways to initialize an array
arr: public(DynArray[uint256, 10])
arr2: public(DynArray[uint256, 10])
@external
def __init__():
    self.arr2 = [1, 2, 3]
# Fixed sized array, all elements initialize to 0
myFixedSizeArr: public(uint256[10])

@external
@view
def get(i: uint256) -> uint256:
    return self.arr[i]

# Solidity can return the entire array.
# But this function should be avoided for
# arrays that can grow indefinitely in length.
@external
@view
def getArr() -> DynArray[uint256, 10]:
    return self.arr

@external
def push(i: uint256):
    # Append to array
    # This will increase the array length by 1.
    self.arr.append(i)

@external
def pop_():
    # Remove last element from array
    # This will decrease the array length by 1
    self.arr.pop()

@external
@view
def getLength() -> uint256:
    return len(self.arr)

@external
def remove(index: uint256):
    # Delete does not change the array length.
    # It resets the value at index to it's default value,
    # in this case 0
    self.arr[index] = empty(uint256)

@external
def examples():
    # create array in memory, only fixed size can be created
    a: DynArray[uint256, 10] = [0, 0, 0, 0, 0]

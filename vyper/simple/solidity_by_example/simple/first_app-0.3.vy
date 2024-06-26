#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "init_value",
#!     "inputs": [
#!         {
#!             "method": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "dec",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

count: public(uint256)

# Function to get the current count
@external
@view
def get() -> uint256:
    return self.count

# Function to increment count by 1
@external
def inc():
    self.count += 1

# Function to decrement count by 1
@external
def dec():
    self.count -= 1

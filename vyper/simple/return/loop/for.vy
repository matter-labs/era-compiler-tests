#! { "cases": [ {
#!     "name": "entry0",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! }, {
#!     "name": "entry1",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "entry2",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6"
#!     ]
#! }, {
#!     "name": "entry3",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7"
#!     ]
#! }, {
#!     "name": "entry4",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "99"
#!     ]
#! } ] }

@external
@pure
def main(param: uint8) -> uint256:
    for i in range(0, 5):
        if param == 0 and i > 3:
            return i # 4
        for j in range(5, 10):
            if param == 1:
                return convert(param * j, uint256) # 5
            for k in range(0, 5):
                if param == 2 and k == 3:
                    return 6
        if param == 3:
            return convert(param * 2 + 1, uint256) # 7
    return 99

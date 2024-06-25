#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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
    for i: uint256 in range(0, 10):
        if param == 0 and i == 2:
            return i * 2 # 4
        for _: uint256 in range(1000000):
            if param == 1:
                return 5
            for j: uint8 in [10, 8, 6, 4, 2]:
                if param == 2 and j == 4:
                    return convert(param + j, uint256) # 6
            break
        if param == 3 and i == 7:
            return i
    return 99

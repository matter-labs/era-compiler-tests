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
    if param < 3:
        if param < 2:
            if param == 0:
                return 4
            else:
                return convert(5 * param, uint256) # 5
        return convert(param * 3, uint256) # 6
    else:
        if param == 3:
            return convert(param * 2 + 1, uint256) # 7
        return 99

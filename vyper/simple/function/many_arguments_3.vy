#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "entry",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "0", "0", "0", "0", "0", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-179/many-arguments-bug

@internal
@pure
def main(param: uint8, p1: uint256, p2: uint256, p3: uint256, p4: uint256, p5: uint256, p6: uint256) -> uint256:
    if param == 1:
        return p1
    elif param == 2:
        return p2
    elif param == 3:
        return p3
    elif param == 4:
        return p4
    elif param == 5:
        return p5
    elif param == 6:
        return p6
    else:
        return 0

@external
def entry(p1: uint256, p2: uint256, p3: uint256, p4: uint256, p5: uint256, p6: uint256) -> uint256:
    if self.main(0, p1, p2, p3, p4, p5, p6) == 0 and self.main(7, p1, p2, p3, p4, p5, p6) == 0:
        return 1
    else:
        return 0

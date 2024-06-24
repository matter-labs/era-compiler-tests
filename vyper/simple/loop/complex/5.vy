#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "31"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-205/back-end-optimization-bug-minimized-complex-infinite-loop

@external
@pure
def main(param: uint8) -> uint256:
    cnt: uint256 = 0

    for j: uint256 in [1, 2]:
        for h: uint256 in range(0, 1):
            if param == 4:
                return 40
            cnt += 1

    return cnt

#! { "cases": [ {
#!     "name": "entry",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! } ] }

@external
@pure
def entry() -> uint256:
    end: bool = True

    sum: uint256 = 0
    for i in range(1, 3):
        sum += i

        if not end:
            break

    return sum

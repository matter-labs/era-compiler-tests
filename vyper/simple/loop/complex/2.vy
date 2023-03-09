#! { "cases": [ {
#!     "name": "entry",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "31"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1008"
#!     ]
#! } ] }

@external
@pure
def entry(param: uint8) -> uint256:
    cnt: uint256 = 0

    for j in [1, 2]:
        p: uint8 = 0
        for _ in range(1000000):
            p += 2
            if p % 8 == 0:
                break
            for h in range(1, 5):
                if param == 4:
                    return 40
                if h > 2:
                    break
                for k in range(10, 12):
                    x: uint8 = 7
                    for __ in range(1000000):
                        x -= 1
                        if x == 0:
                            break
                        for y in [10, 11, 12, 13, 14, 15, 16]:
                            cnt += 1

    return cnt

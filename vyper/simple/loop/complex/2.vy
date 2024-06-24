#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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

    for j: uint8 in [1, 2]:
        p: uint8 = 0
        for _: uint256 in range(1000000):
            p += 2
            if p % 8 == 0:
                break
            for h: uint8 in range(1, 5):
                if param == 4:
                    return 40
                if h > 2:
                    break
                for k: uint8 in range(10, 12):
                    x: uint8 = 7
                    for __: uint256 in range(1000000):
                        x -= 1
                        if x == 0:
                            break
                        for y: uint8 in [10, 11, 12, 13, 14, 15, 16]:
                            cnt += 1

    return cnt

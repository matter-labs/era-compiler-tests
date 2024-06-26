#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "entry",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "60"
#!     ]
#! } ] }

@internal
@pure
def test(param: uint8) -> uint256:
    cnt: uint256 = 0

    p: uint8 = 0
    for _: uint256 in range(1000000):
        p += 2
        if p % 8 == 0:
            break
        if param == 12:
            continue
        for k: uint8 in range(0, 2):
            for x: uint8 in range(0, 2):
                y: uint8 = 10
                for __: uint256 in range(1000000):
                    if not y < 17:
                        break
                    y += 1
                    if y % 3 == 0:
                        continue
                    if y == 16:
                        break
                    if param == 32 and y > 13:
                        break
                    cnt += 1

    return cnt

@external
def entry() -> uint256:
    return self.test(32) + self.test(33)

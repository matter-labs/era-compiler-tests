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
#!         "3"
#!     ]
#! } ] }

@internal
@pure
def test() -> uint256:
    for i: uint256 in range(0, 2):
        for j: uint256 in [1, 2]:
            p: uint8 = 0
            for _: uint256 in range(1000000):
                p += 2
                if p == 8:
                    break
                for h: uint256 in range(1, 5):
                    if h > 2:
                        break
                    for k: uint256 in range(10, 12):
                        x: uint8 = 6
                        for __: uint256 in range(1000000):
                            x -= 1
                            if x == 0:
                                break
                            for y: uint256 in [10, 11, 12, 13, 14, 15, 16]:
                                pass
    return 1

@external
def entry() -> uint256:
    return self.test() + self.test() + self.test()

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

@internal
@pure
def test() -> uint256:
    for i in range(0, 2):
        for j in [1, 2]:
            p: uint8 = 0
            for _ in range(1000000):
                p += 2
                if p == 8:
                    break
                for h in range(1, 5):
                    if h > 2:
                        break
                    for k in range(10, 12):
                        x: uint8 = 6
                        for __ in range(1000000):
                            x -= 1
                            if x == 0:
                                break
                            for y in [10, 11, 12, 13, 14, 15, 16]:
                                pass
    return 1

@external
def entry() -> uint256:
    return self.test() + self.test() + self.test()

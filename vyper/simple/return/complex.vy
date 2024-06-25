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
#!         "1"
#!     ]
#! } ] }

@internal
@pure
def main(param: uint8) -> uint256:
    for i: uint256 in range(0, 10):
        if param == 0 and i == 4:
            return i # 4
        if param // 3 == 0:
            for j: uint256 in [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]:
                if param == 1 and j == 5:
                    return j # 5
                for _: uint256 in range(1000000):
                    if param == 2:
                        return 6
                    else:
                        break
        else:
            if param < 5:
                for l: uint256 in range(0, 10):
                    if param == 3 and l == 7:
                        return l # 7
                if param == 4:
                    return 8
            else:
                if param < 7:
                    for _: uint256 in range(1000000):
                        if param == 5:
                            return 9
                        else:
                            return 10
    return 99

@external
def entry() -> uint256:
    result: bool = True
    for i: uint8 in range(0, 7):
        result = result and self.main(i) == convert(i + 4, uint256)
    result = result and self.main(7) == 99
    result = result and self.main(11) == 99
    if result:
        return 1
    else:
        return 0

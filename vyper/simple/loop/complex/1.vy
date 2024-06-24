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
def test(param: uint8) -> uint256:
    cnt: uint256 = 0
    tmp: uint8 = 0

    for i: uint8 in range(0, 2):
        if param == 1:
            return convert(param * 10, uint256) # 10
        if param == 21:
            break
        if param == 11:
            continue
        for j: uint8 in [1, 2]:
            p: uint8 = 0
            if param == 22:
                break
            if param == 33 and j > 1:
                return cnt
            for _: uint8 in range(1000000):
                if param == 3:
                    return convert(param * 10, uint256) # 30
                p += 2
                if p % 8 == 0:
                    break
                if param == 12:
                    continue
                if param == 23:
                    break
                for h: uint8 in range(1, 5):
                    if param == 4:
                        return 40
                    if h > 2:
                        break
                    if param == 24:
                        break
                    for k: uint8 in range(10, 12):
                        x: uint8 = 7
                        tmp = 5 * k
                        if param == 5:
                            return convert(tmp, uint256)
                        if param == 25:
                            break
                        for __: uint256 in range(1000000):
                            x -= 1
                            if x == 0:
                                break
                            if x % 2 == 0:
                                continue
                            y: uint8 = 10
                            if param == 26:
                                break
                            for ___: uint256 in range(1000000):
                                if not y < 17:
                                    break
                                if param == 7:
                                    return convert(7 * y, uint256) # 70
                                if param == 27:
                                    break
                                y += 1
                                if y % 3 == 0:
                                    continue
                                if y == 16:
                                    break
                                if param == 31 and y > 11:
                                    continue
                                if param == 32 and y > 13:
                                    break
                                for l: uint8 in range(4):
                                    if param == 28:
                                        break
                                    if l % 2 == 0:
                                        continue
                                    if param == 8:
                                        return 80
                                    if param == 13:
                                        continue
                                    cnt += 1
                            if param == 6:
                                return 60

            if param == 2:
                return 20

    return cnt

@external
def entry() -> uint256:
    result: bool = True
    # test returns
    for i: uint256 in range(1, 9):
        result = result and self.test(i) == convert(i * 10, uint256)
    # test break
    for i: uint256 in range(1, 9):
        result = result and self.test(20 + i) == 0
    # test continue
    result = result and self.test(11) == 0
    result = result and self.test(12) == 0
    result = result and self.test(13) == 0

    # cnt
    result = result and self.test(0) == 864

    result = result and self.test(31) == 288
    result = result and self.test(32) == 576
    result = result and self.test(33) == 216

    if result:
        return 1
    else:
        return 0

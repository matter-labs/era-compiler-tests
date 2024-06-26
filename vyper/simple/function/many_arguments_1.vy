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
def main(
    param: uint8,
    p1: uint8,
    p2: uint8,
    p3: uint8,
    p4: uint8,
    p5: uint8,
    p6: uint8,
    p7: uint8,
    p8: uint256,
    p9: uint256,
    p10: uint256,
    p11: uint256,
) -> uint256:
    result: uint256 = 0
    if param == 1:
        result = convert(p1, uint256)
    elif param == 2:
        result = convert(p2, uint256)
    elif param == 3:
        result = convert(p3, uint256)
    elif param == 4:
        result = convert(p4, uint256)
    elif param == 5:
        result = convert(p5, uint256)
    elif param == 6:
        result = convert(p6, uint256)
    elif param == 7:
        result = convert(p7, uint256)
    elif param == 8:
        result = p8
    elif param == 9:
        result = p9
    elif param == 10:
        result = p10
    elif param == 11:
        result = p11
    else:
        result = convert(p1 + p2 + p3 + p4 + p5, uint256)
        result += convert(p6, uint256) + convert(p7, uint256) + p8 + p9 + p10 + p11
    return result

@external
def entry() -> uint256:
    p1: uint8 = 1
    p2: uint8 = 4
    p3: uint8 = 9
    p4: uint8 = 16
    p5: uint8 = 25
    p6: uint8 = 36
    p7: uint8 = 49
    p8: uint256 = 64
    p9: uint256 = 81
    p10: uint256 = 100
    p11: uint256 = 121

    result: bool = True

    for i: uint8 in range(1, 11):
        result = result and self.main(i, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == convert(i * i, uint256)

    result = result and self.main(0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 506
    result = result and self.main(16, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 506

    if result:
        return 1
    else:
        return 0

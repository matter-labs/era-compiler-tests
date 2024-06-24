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
    p2: uint16,
    p3: uint24,
    p4: uint32,
    p5: uint40,
    p6: uint48,
    p7: uint56,
    p8: uint64,
    p9: uint72,
    p10: uint80,
    p11: uint88,
    p12: uint96,
    p13: uint104,
    p14: uint112,
    p15: uint120,
    p16: uint128,
    p17: uint136,
    p18: uint144,
    p19: uint152,
    p20: uint256
) -> uint256:
    result: uint256 = 0
    if param == 0:
        result = convert(p1, uint256) + convert(p2, uint256) + convert(p3, uint256) + convert(p4, uint256) + convert(p5, uint256) + convert(p6, uint256) + convert(p7, uint256) + convert(p8, uint256) + convert(p9, uint256) + convert(p10, uint256) + convert(p11, uint256) + convert(p12, uint256) + convert(p13, uint256) + convert(p14, uint256) + convert(p15, uint256) + convert(p16, uint256) + convert(p17, uint256) + convert(p18, uint256) + convert(p19, uint256) + p20
    elif param == 1:
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
        result = convert(p8, uint256)
    elif param == 9:
        result = convert(p9, uint256)
    elif param == 10:
        result = convert(p10, uint256)
    elif param == 11:
        result = convert(p11, uint256)
    elif param == 12:
        result = convert(p12, uint256)
    elif param == 13:
        result = convert(p13, uint256)
    elif param == 14:
        result = convert(p14, uint256)
    elif param == 15:
        result = convert(p15, uint256)
    elif param == 16:
        result = convert(p16, uint256)
    elif param == 17:
        result = convert(p17, uint256)
    elif param == 18:
        result = convert(p18, uint256)
    elif param == 19:
        result = convert(p19, uint256)
    elif param == 20:
        result = p20
    else:
        result = convert(p1, uint256) * convert(p2, uint256) * convert(p3, uint256) * convert(p4, uint256) * convert(p5, uint256) * convert(p6, uint256) * convert(p7, uint256) * convert(p8, uint256) * convert(p9, uint256) * convert(p10, uint256) * convert(p11, uint256) * convert(p12, uint256) * convert(p13, uint256) * convert(p14, uint256) * convert(p15, uint256) * convert(p16, uint256) * convert(p17, uint256) * convert(p18, uint256) * convert(p19, uint256) * p20

    return result

@external
@view
def entry() -> bool:
    p1: uint8 = 1
    p2: uint16 = 4
    p3: uint24 = 9
    p4: uint32 = 16
    p5: uint40 = 25
    p6: uint48 = 36
    p7: uint56 = 49
    p8: uint64 = 64
    p9: uint72 = 81
    p10: uint80 = 100
    p11: uint88 = 121
    p12: uint96 = 144
    p13: uint104 = 169
    p14: uint112 = 196
    p15: uint120 = 225
    p16: uint128 = 256
    p17: uint136 = 289
    p18: uint144 = 324
    p19: uint152 = 361
    p20: uint256 = 400

    result: bool = True
    for i: uint256 in range(1,21):
        result = result and self.main(i, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == convert(i, uint256) * convert(i, uint256)

    result = result and self.main(0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 2870
    result = result and self.main(21, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 5919012181389927685417441689600000000

    return result

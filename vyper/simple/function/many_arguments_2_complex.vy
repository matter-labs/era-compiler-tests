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

struct Str1:
    a: uint72

struct Str2:
    a: Str1[2]
    b: uint24

struct string:
    inner: String[100]

@internal
@pure
def main(
    param: uint8,
    p1: Str1,
    p2: Str2[2],
    p3: uint208,
    p4: int8,
    p5: bytes1,
    p6: uint256,
    p7: int32,
    p8: uint24,
    p9: uint128,
    p10: int128,
    p11: uint72[2],
    p12: uint256,
    p13: int128[1],
    p14: Str1[1],
    p15: bytes5,
    p16: bytes2,
    p17: int256,
    p18: string[2],
    p19: Bytes[100],
    p20: uint8
) -> uint256:
    result: uint256 = 0
    if param == 0:
        result = convert(p1.a, uint256) + convert(p2[0].a[0].a, uint256) + convert(p2[0].a[1].a, uint256) + convert(p2[0].b, uint256) + convert(p2[1].a[0].a, uint256) + convert(p2[1].a[1].a, uint256) + convert(p2[1].b, uint256) + convert(p3, uint256) + convert(p4, uint256) + convert(convert(p5, uint8), uint256) + p6 + convert(p7, uint256) + convert(p8, uint256) + convert(p9, uint256) + convert(p10, uint256) + convert(p11[0], uint256) + convert(p11[1], uint256) + p12 + convert(p13[0], uint256) + convert(p14[0].a, uint256) + convert(convert(p15, uint40), uint256) + convert(convert(p16, uint16), uint256) + convert(p17, uint256) + convert(slice(convert(p18[0].inner, Bytes[100]), 0, 1), uint256) + convert(slice(convert(p18[1].inner, Bytes[100]), 0, 1), uint256) + convert(slice(p19, 0, 1), uint256) + convert(p20, uint256)
    elif param == 1:
        result = convert(p1.a, uint256)
    elif param == 2:
        result = convert(p2[0].a[0].a, uint256)
    elif param == 3:
        result = convert(p2[0].a[1].a, uint256)
    elif param == 4:
        result = convert(p2[0].b, uint256)
    elif param == 5:
        result = convert(p2[1].a[0].a, uint256)
    elif param == 6:
        result = convert(p2[1].a[1].a, uint256)
    elif param == 7:
        result = convert(p2[1].b, uint256)
    elif param == 8:
        result = convert(p3, uint256)
    elif param == 9:
        result = convert(p4, uint256)
    elif param == 10:
        result = convert(convert(p5, uint8), uint256)
    elif param == 11:
        result = p6
    elif param == 12:
        result = convert(p7, uint256)
    elif param == 13:
        result = convert(p8, uint256)
    elif param == 14:
        result = convert(p9, uint256)
    elif param == 15:
        result = convert(p10, uint256)
    elif param == 16:
        result = convert(p11[0], uint256)
    elif param == 17:
        result = convert(p11[1], uint256)
    elif param == 18:
        result = p12
    elif param == 19:
        result = convert(p13[0], uint256)
    elif param == 20:
        result = convert(p14[0].a, uint256)
    elif param == 21:
        result = convert(convert(p15, uint40), uint256)
    elif param == 22:
        result = convert(convert(p16, uint16), uint256)
    elif param == 23:
        result = convert(p17, uint256)
    elif param == 24:
        result = convert(slice(convert(p18[0].inner, Bytes[100]), 1, 1), uint256)
    elif param == 25:
        result = convert(slice(convert(p18[1].inner, Bytes[100]), 1, 1), uint256)
    elif param == 26:
        result = convert(slice(p19, 1, 1), uint256)
    elif param == 27:
        result = convert(p20, uint256)
    else:
        result = convert(p1.a, uint256) * convert(p2[0].a[0].a, uint256) * convert(p2[0].a[1].a, uint256) * convert(p2[0].b, uint256) * convert(p2[1].a[0].a, uint256) * convert(p2[1].a[1].a, uint256) * convert(p2[1].b, uint256) * convert(p3, uint256) * convert(p4, uint256) * convert(convert(p5, uint8), uint256) * p6 * convert(p7, uint256) * convert(p8, uint256) * convert(p9, uint256) * convert(p10, uint256) * convert(p11[0], uint256) * convert(p11[1], uint256) * p12 * convert(p13[0], uint256) * convert(p14[0].a, uint256) * convert(convert(p15, uint40), uint256) * convert(convert(p16, uint16), uint256) * convert(p17, uint256) * convert(slice(convert(p18[0].inner, Bytes[100]), 0, 1), uint256) * convert(slice(convert(p18[1].inner, Bytes[100]), 0, 1), uint256) * convert(slice(p19, 0, 1), uint256) * convert(p20, uint256)

    return result

@external
@view
def entry() -> bool:
    p1: Str1 = Str1({a: 1})
    p2: Str2[2] = [Str2({a: [Str1({a: 4}), Str1({a: 9})], b: 16}), Str2({a: [Str1({a: 25}), Str1({a: 36})], b: 49})]
    p3: uint208 = 64
    p4: int8 = 81
    p5: bytes1 = 0x64
    p6: uint256 = 121
    p7: int32 = 144
    p8: uint24 = 169
    p9: uint128 = 196
    p10: int128 = 225
    p11: uint72[2] = [256, 289]
    p12: uint256 = 324
    p13: int128[1] = [361]
    p14: Str1[1] = [Str1({a: 400})]
    p15: bytes5 = 0x00000001B9
    p16: bytes2 = 0x01E4
    p17: int256 = 529
    p18: string[2] = [string({inner: "ab"}), string({inner: "cd"})]
    p19: Bytes[100] = b"\x01\x02"
    p20: uint8 = 1
    result: bool = True
    for i: uint256 in range(1, 24):
        result = result and self.main(i, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == convert(i, uint256) * convert(i, uint256)

    result = result and self.main(0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 4522
    result = result and self.main(24, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 98
    result = result and self.main(25, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 100
    result = result and self.main(26, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 2
    result = result and self.main(27, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 1
    result = result and self.main(28, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) == 6417941967197257382729677832768998657228800000000

    return result

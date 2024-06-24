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
    a: uint256
    b: uint256[2]

struct Str2:
    a: Str1
    b: uint256
    c: uint8

@internal
@pure
def toUint(a: uint8) -> uint256:
    result: uint256 = 0
    if a == 0:
        result = 64
    elif a == 1:
        result = 169
    elif a == 2:
        result = 784
    elif a == 3:
        result = 900
    elif a == 4:
        result = 1225
    elif a == 5:
        result = 1296
    else:
        result = 1369
    return result

@internal
def main(
    param: uint8,
    p1: Str1,
    p2: Str2[2],
    p3: uint256,
    p4: Str1[3],
    p5: Str2,
    p6: uint256,
    p7: uint8,
    p8: Str1[1],
    p9: uint256,
    p10: uint8[3],
    p11: uint256[2]
) -> uint256:
    result: uint256 = 0
    if param == 1:
        result = p1.a
    elif param == 2:
        result = p1.b[0]
    elif param == 3:
        result = p1.b[1]
    elif param == 4:
        result = p2[0].a.a
    elif param == 5:
        result = p2[0].a.b[0]
    elif param == 6:
        result = p2[0].a.b[1]
    elif param == 7:
        result = p2[0].b
    elif param == 8:
        result = self.toUint(p2[0].c)
    elif param == 9:
        result = p2[1].a.a
    elif param == 10:
        result = p2[1].a.b[0]
    elif param == 11:
        result = p2[1].a.b[1]
    elif param == 12:
        result = p2[1].b
    elif param == 13:
        result = self.toUint(p2[1].c)
    elif param == 14:
        result = p3
    elif param == 15:
        result = p4[0].a
    elif param == 16:
        result = p4[0].b[0]
    elif param == 17:
        result = p4[0].b[1]
    elif param == 18:
        result = p4[1].a
    elif param == 19:
        result = p4[1].b[0]
    elif param == 20:
        result = p4[1].b[1]
    elif param == 21:
        result = p4[2].a
    elif param == 22:
        result = p4[2].b[0]
    elif param == 23:
        result = p4[2].b[1]
    elif param == 24:
        result = p5.a.a
    elif param == 25:
        result = p5.a.b[0]
    elif param == 26:
        result = p5.a.b[1]
    elif param == 27:
        result = p5.b
    elif param == 28:
        result = self.toUint(p5.c)
    elif param == 29:
        result = p6
    elif param == 30:
        result = self.toUint(p7)
    elif param == 31:
        result = p8[0].a
    elif param == 32:
        result = p8[0].b[0]
    elif param == 33:
        result = p8[0].b[1]
    elif param == 34:
        result = p9
    elif param == 35:
        result = self.toUint(p10[0])
    elif param == 36:
        result = self.toUint(p10[1])
    elif param == 37:
        result = self.toUint(p10[2])
    elif param == 38:
        result = p11[0]
    elif param == 39:
        result = p11[1]
    else:
        result = 0
    return result

@external
def entry() -> uint256:
    p1: Str1 = Str1(a=1, b=[4, 9])

    p2: Str2[2] = [
        Str2(
            a=Str1(a=16, b=[25, 36]),
            b=49,
            c=0
        ),
        Str2(
            a=Str1(a=81, b=[100, 121]),
            b=144,
            c=1
        )
        ]

    p3: uint256 = 196

    p4: Str1[3] = [
        Str1(a=225, b=[256, 289]),
        Str1(a=324, b=[361, 400]),
        Str1(a=441, b=[484, 529])
        ]

    p5: Str2 = Str2(
        a=Str1(a=576, b=[625, 676]),
        b=729,
        c=2
    )

    p6: uint256 = 841

    p7: uint8 = 3

    p8: Str1[1] = [
        Str1(a=961, b=[1024, 1089])
        ]

    p9: uint256 = 1156

    p10: uint8[3] = [
        4,
        5,
        6
        ]

    p11: uint256[2] = [1444, 1521]

    result: bool = True

    for i: uint8 in range(1, 39):
        result = result and self.main(i, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == convert(i, uint256) * convert(i, uint256)

    result = result and self.main(0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 0
    result = result and self.main(40, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 0

    if result:
        return 1
    else:
        return 0

struct Str1:
    a: uint256[2]
    b: uint8

struct Str2:
    a: Str1
    b: uint8

@external
@pure
def f(p1: Str1[2], p2: Str2, p3: uint256, p4: uint8[3], p5: uint256[3]) -> uint256:
    result: uint256 = 0
    for i: uint256 in range(2):
        for j: uint256 in range(2):
            result += p1[i].a[j]
        result += convert(p1[i].b, uint256)

    for j: uint256 in range(2):
        result += p2.a.a[j]
    result += convert(p2.a.b, uint256)
    result += convert(p2.b, uint256)

    result += p3

    for i: uint256 in range(3):
        result += convert(p4[i], uint256)

    for i: uint256 in range(3):
        result += p5[i]

    return result

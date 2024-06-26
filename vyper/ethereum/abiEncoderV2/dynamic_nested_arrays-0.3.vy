interface Self:
    def f(a: uint256, b: DynArray[DynArray[uint16, 10], 10], c: DynArray[uint256[2], 10][3], d: uint256) -> (uint256, uint256, uint256, uint256, uint256, uint256, uint256): pure

@external
@pure
def f(a: uint256, b: DynArray[DynArray[uint16, 10], 10], c: DynArray[uint256[2], 10][3], d: uint256) -> (uint256, uint256, uint256, uint256, uint256, uint256, uint256):
    return (a, len(b), len(b[1]), convert(b[1][1], uint256), len(c[1]), c[1][1][1], d)

@external
@view
def test() -> (uint256, uint256, uint256, uint256, uint256, uint256, uint256):
    b: DynArray[DynArray[uint16, 10], 10] = [[],[],[]]
    b[0] = [0, 0]
    b[0][0] = convert(0x55, uint16)
    b[0][1] = convert(0x56, uint16)
    b[1] = [0, 0, 0, 0]
    b[1][0] = convert(0x65, uint16)
    b[1][1] = convert(0x66, uint16)
    b[1][2] = convert(0x67, uint16)
    b[1][3] = convert(0x68, uint16)

    c: DynArray[uint256[2], 10][3] = empty(DynArray[uint256[2], 10][3])
    c[0] = [[0, 0]]
    c[0][0][1] = convert(0x75, uint256)
    c[1] = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    c[1][1][1] = convert(0x85, uint256)

    return Self(self).f(12, b, c, 13)

# ----
# test() -> 12, 3, 4, 0x66, 5, 0x85, 13
# f(uint256,uint16[][],uint256[2][][3],uint256): 12, 0x80, 0x220, 13, 3, 0x60, 0xC0, 0x160, 2, 85, 86, 4, 101, 102, 103, 104, 0, 0x60, 0xC0, 0x220, 1, 0, 117, 5, 0, 0, 0, 133, 0, 0, 0, 0, 0, 0, 0 -> 12, 3, 4, 0x66, 5, 0x85, 13

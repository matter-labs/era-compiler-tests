struct bytes:
    inner: Bytes[100]

@external
def f1(a: bytes[1]) -> (uint256, uint256, uint256, uint256):
    return (len(a[0].inner), convert(convert(slice(a[0].inner, 0, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 1, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 2, 1), bytes1), uint256))

@external
def f2(a: bytes[1], b: bytes[1]) -> (uint256, uint256, uint256, uint256, uint256, uint256, uint256):
    return (len(a[0].inner), convert(convert(slice(a[0].inner, 0, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 1, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 2, 1), bytes1), uint256), len(b[0].inner), convert(convert(slice(b[0].inner, 0, 1), bytes1), uint256), convert(convert(slice(b[0].inner, 1, 1), bytes1), uint256))

@external
def g1(a: bytes[2]) -> (uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256):
    return (len(a[0].inner), convert(convert(slice(a[0].inner, 0, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 1, 1), bytes1), uint256), convert(convert(slice(a[0].inner, 2, 1), bytes1), uint256), len(a[1].inner), convert(convert(slice(a[1].inner, 0, 1), bytes1), uint256), convert(convert(slice(a[1].inner, 1, 1), bytes1), uint256), convert(convert(slice(a[1].inner, 2, 1), bytes1), uint256))

# via yul disabled because of stack issues.

# ====
# compileViaYul: false
# ----
# f1((bytes)[1]): 0x20, 0x20, 0x20, 0x3, hex"0102030000000000000000000000000000000000000000000000000000000000" -> 0x3, 0x1, 0x2, 0x3
# f2((bytes)[1],(bytes)[1]): 0x40, 0xc0, 0x20, 0x20, 0x3, hex"0102030000000000000000000000000000000000000000000000000000000000", 0x20, 0x20, 0x2, hex"0102000000000000000000000000000000000000000000000000000000000000" -> 0x3, 0x1, 0x2, 0x3, 0x2, 0x1, 0x2
# g1((bytes)[2]): 0x20, 0x40, 0xa0, 0x20, 0x3, hex"0102030000000000000000000000000000000000000000000000000000000000", 0x20, 0x3, hex"0405060000000000000000000000000000000000000000000000000000000000" -> 0x3, 0x1, 0x2, 0x3, 0x3, 0x4, 0x5, 0x6
# g1((bytes)[2]): 0x20, 0x40, 0x40, 0x20, 0x3, hex"0102030000000000000000000000000000000000000000000000000000000000" -> 0x3, 0x1, 0x2, 0x3, 0x3, 0x1, 0x2, 0x3

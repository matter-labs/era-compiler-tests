struct string:
    inner: String[100]
@external
def f(a: string[1]) -> (uint256, uint256, uint256, String[100]):
    s1: String[100] = a[0].inner
    m1: Bytes[100] = convert(s1, Bytes[100])
    return (1, len(m1), convert(convert(slice(m1, 0, 1), uint8), uint256), s1)

# ----
# f((string)[1]): 0x20, 0x2, hex"6162000000000000000000000000000000000000000000000000000000000000" -> 1, 2, 97, 0x80, 2, "ab"

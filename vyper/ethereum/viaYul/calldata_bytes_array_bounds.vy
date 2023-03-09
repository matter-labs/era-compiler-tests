struct bytes:
    inner: Bytes[100]

@external
def f(a: DynArray[bytes, 1], i: uint256) -> uint256:
    return convert(convert(slice(a[0].inner, i, 1), uint8), uint256)

# ----
# f((bytes)[],uint256): 0x40, 0, 1, 0x20, 0x20, 2, hex"6162" -> 0x61
# f((bytes)[],uint256): 0x40, 1, 1, 0x20, 0x20, 2, hex"6162" -> 0x62
# f((bytes)[],uint256): 0x40, 2, 1, 0x20, 0x20, 2, hex"6162" -> FAILURE

@external
def f1() -> Bytes[100]:
    return _abi_encode(convert(1, uint256), convert(2, uint256))

@external
def f2() -> Bytes[256]:
    x: String[100] = "abc"
    return _abi_encode(convert(1, uint256), x, convert(2, uint256))

@external
def f3() -> Bytes[256]:
    # test that memory is properly allocated
    x: String[100] = "abc"
    r: Bytes[256] = _abi_encode(convert(1, uint256), x, convert(2, uint256))
    y: Bytes[100] = convert("def", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "d"
    y = convert("eef", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "e"
    return r

@external
def f4() -> Bytes[192]:
    x: bytes4 = convert(convert("abcd", Bytes[4]), bytes4)
    return _abi_encode(convert(x, bytes2))

# ----
# f1() -> 0x20, 0x40, 0x1, 0x2
# f2() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f3() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f4() -> FAILURE

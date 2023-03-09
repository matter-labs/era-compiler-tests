struct S:
    a: uint256
    b: uint256[2]

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

s: S

@external
def f4() -> Bytes[352]:
    x: String[100] = "abc"
    self.s.a = 7
    self.s.b[0] = 2
    self.s.b[1] = 3
    r: Bytes[352] = _abi_encode(convert(1, uint256), x, self.s, convert(2, uint256))
    y: Bytes[100] = convert("def", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "d"
    y = convert("eef", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "e"
    return r
    

# ====
# compileViaYul: also
# ----
# f1() -> 0x20, 0x40, 0x1, 0x2
# f2() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f3() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f4() -> 0x20, 0x100, 0x1, 0xc0, 0x7, 0x2, 0x3, 0x2, 0x3, "abc"
# gas irOptimized: 113361
# gas legacy: 114900
# gas legacyOptimized: 112606

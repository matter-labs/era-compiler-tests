@external
def f() -> uint256[5]:
    a: uint256[5] = [4, 11, convert(0x0111, uint256), convert(3355443, uint256), 2222222222222222222]
    return a

@external
def g() -> uint256[5]:
    a: uint256[5] = [16, 256, 257, convert(0x333333, uint256), convert(0x1ed6eb565788e38e, uint256)]
    return a
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 4, 11, 0x0111, 0x333333, 2222222222222222222
# g() -> 0x10, 0x0100, 0x0101, 0x333333, 2222222222222222222

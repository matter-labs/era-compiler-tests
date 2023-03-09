@external
def f() -> uint256:
    x: uint256 = convert(0x001f000000000000000000000000000000000000000000000000000000000000, uint256)
    x = shift(x, 8)
    x = shift(x, -256)
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x0

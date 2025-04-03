@external
def f() -> uint256:
    x: uint256 = convert(0x001f000000000000000000000000000000000000000000000000000000000000, uint256)
    x = x << 8
    x = x >> 256
    return x

# ----
# f() -> 0x0

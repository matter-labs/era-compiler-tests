@external
def f() -> uint256:
    x: uint256 = convert(0xff, uint256)
    x = shift(x, -8)
    return x

# ----
# f() -> 0x0

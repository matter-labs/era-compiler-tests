@external
@pure
def f() -> uint16:
    y: uint8 = convert(0x78, uint8)
    return convert(y, uint16)

# ----
# f() -> 0x78

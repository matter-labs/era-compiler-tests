@external
def run(x1: uint256, x2: uint256, x3: uint256) -> uint256:
    a: uint8 = convert(0x01, uint8)
    b: uint8 = convert(0x10, uint8)
    c: uint16 = convert(0x0100, uint16)
    y: uint256 = convert(a, uint256) + convert(b, uint256) + convert(c, uint256) + x1 + x2 + x3
    y += convert(b, uint256) + x2
    return y

# ----
# run(uint256,uint256,uint256): 0x1000, 0x10000, 0x100000 -> 0x121121

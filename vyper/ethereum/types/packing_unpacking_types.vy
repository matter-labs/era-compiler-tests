@external
def run(a: bool, b: uint32, c: uint64) -> uint256:
    y: uint256 = 0
    if a:
        y = 1
    y = bitwise_or(y * convert(0x0100000000, uint256), bitwise_and(bitwise_not(convert(b, uint256)), 2**32-1))
    y = bitwise_or(y * convert(0x010000000000000000, uint256), bitwise_and(bitwise_not(convert(c, uint256)), 2**64-1))
    return y

# ----
# run(bool,uint32,uint64): true, 0x0f0f0f0f, 0xf0f0f0f0f0f0f0f0
# -> 0x0000000000000000000000000000000000000001f0f0f0f00f0f0f0f0f0f0f0f

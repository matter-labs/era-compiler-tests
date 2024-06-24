@external
def shl_(a: uint256, b: uint256) -> uint256:
    return a << convert(b, uint256)

@external
def shr_(a: uint256, b: uint256) -> uint256:
    return a >> convert(b, uint256)

# ----
# shl_(uint256,uint256): 0x01, 0x02 -> 0x04
# shl_(uint256,uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x01 -> 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe
# shl_(uint256,uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x100 -> 0x00
# shr_(uint256,uint256): 0x03, 0x01 -> 0x01
# shr_(uint256,uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x01 -> 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
# shr_(uint256,uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0xff -> 0x01
# shr_(uint256,uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x100 -> 0x00

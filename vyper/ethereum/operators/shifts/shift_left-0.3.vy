@external
def f(a: uint256, b: uint256) -> uint256:
    return shift(a, convert(b, int256))
    
# ----
# f(uint256,uint256): 0x4266, 0x0 -> 0x4266
# f(uint256,uint256): 0x4266, 0x8 -> 0x426600
# f(uint256,uint256): 0x4266, 0x10 -> 0x42660000
# f(uint256,uint256): 0x4266, 0x11 -> 0x84cc0000
# f(uint256,uint256): 0x4266, 0xf0 -> 0x4266000000000000000000000000000000000000000000000000000000000000
# f(uint256,uint256): 0x4266, 0x100 -> 0

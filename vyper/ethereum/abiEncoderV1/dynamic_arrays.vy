@external
@pure
def f(a: uint256, b: DynArray[uint16, 20], c: uint256) -> (uint256, uint256, uint256):
    return (len(b), convert(b[a], uint256), c)
    
# ----
# f(uint256,uint16[],uint256): 6, 0x60, 9, 7, 11, 12, 13, 14, 15, 16, 17 -> 7, 17, 9

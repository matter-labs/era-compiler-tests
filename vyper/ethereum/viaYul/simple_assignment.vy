@external
@pure
def f(a: uint256, b: uint256) -> (uint256, uint256):
    x: uint256 = a
    y: uint256 = b
    return x, y
    
# ----
# f(uint256,uint256): 5, 6 -> 5, 6

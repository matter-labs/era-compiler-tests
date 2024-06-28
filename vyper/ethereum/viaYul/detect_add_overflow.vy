@external
@pure
def f(a: uint256, b: uint256) -> uint256:
    return a + b
    
@external
@pure
def g(a: uint8, b: uint8) -> uint8:
    return a + b
      
# ----
# f(uint256,uint256): 5, 6 -> 11
# f(uint256,uint256): -2, 1 -> -1
# f(uint256,uint256): -2, 2 -> FAILURE
# f(uint256,uint256): 2, -2 -> FAILURE
# g(uint8,uint8): 128, 64 -> 192
# g(uint8,uint8): 128, 127 -> 255
# g(uint8,uint8): 128, 128 -> FAILURE

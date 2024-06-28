@external
@pure
def f(a: uint256, b: uint256) -> uint256:
    return a % b
    
@external
@pure
def g(a: uint8, b: uint8) -> uint8:
    return a % b
    
# ----
# f(uint256,uint256): 10, 3 -> 1
# f(uint256,uint256): 10, 2 -> 0
# f(uint256,uint256): 11, 2 -> 1
# f(uint256,uint256): 2, 2 -> 0
# f(uint256,uint256): 1, 0 -> FAILURE
# f(uint256,uint256): 0, 0 -> FAILURE
# f(uint256,uint256): 0, 1 -> 0
# g(uint8,uint8): 10, 3 -> 1
# g(uint8,uint8): 10, 2 -> 0
# g(uint8,uint8): 11, 2 -> 1
# g(uint8,uint8): 2, 2 -> 0
# g(uint8,uint8): 1, 0 -> FAILURE
# g(uint8,uint8): 0, 0 -> FAILURE
# g(uint8,uint8): 0, 1 -> 0

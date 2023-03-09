@external
@pure
def f(a: uint256, b: uint256) -> uint256:
    return a - b
    
@external
@pure
def g(a: uint8, b: uint8) -> uint8:
    return a - b

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256,uint256): 6, 5 -> 1
# f(uint256,uint256): 6, 6 -> 0
# f(uint256,uint256): 5, 6 -> FAILURE
# g(uint8,uint8): 6, 5 -> 1
# g(uint8,uint8): 6, 6 -> 0
# g(uint8,uint8): 5, 6 -> FAILURE

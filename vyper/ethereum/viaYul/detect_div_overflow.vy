@external
@pure
def f(a: uint256, b: uint256) -> uint256:
    return a / b
    
@external
@pure
def g(a: int8, b: int8) -> int8:
    return a / b
       
@external
@pure
def h(a: uint256, b: uint256) -> uint256:
    return a / b

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# f(uint256,uint256): 10, 3 -> 3
# f(uint256,uint256): 1, 0 -> FAILURE
# f(uint256,uint256): 0, 0 -> FAILURE
# f(uint256,uint256): 0, 1 -> 0
# g(int8,int8): -10, 3 -> -3
# g(int8,int8): -10, -3 -> 3
# g(int8,int8): -10, 0 -> FAILURE
# g(int8,int8): -128, 1 -> -128
# g(int8,int8): -128, -2 -> 64
# g(int8,int8): -128, 2 -> -64
# g(int8,int8): -128, -1 -> FAILURE
# g(int8,int8): -127, -1 -> 127
# h(uint256,uint256): 0x8000000000000000000000000000000000000000000000000000000000000000, -1 -> 0

@external
@pure
def f(a: int256, b: int256) -> int256:
    return a % b
    
@external
@pure
def g(a: int8, b: int8) -> int8:
    return a % b
    
# ----
# f(int256,int256): 10, 3 -> 1
# f(int256,int256): 10, 2 -> 0
# f(int256,int256): 11, 2 -> 1
# f(int256,int256): -10, 3 -> -1
# f(int256,int256): 10, -3 -> 1
# f(int256,int256): -10, -3 -> -1
# f(int256,int256): 2, 2 -> 0
# f(int256,int256): 1, 0 -> FAILURE
# f(int256,int256): -1, 0 -> FAILURE
# f(int256,int256): 0, 0 -> FAILURE
# f(int256,int256): 0, 1 -> 0
# f(int256,int256): 0, -1 -> 0
# g(int8,int8): 10, 3 -> 1
# g(int8,int8): 10, 2 -> 0
# g(int8,int8): 11, 2 -> 1
# g(int8,int8): -10, 3 -> -1
# g(int8,int8): 10, -3 -> 1
# g(int8,int8): -10, -3 -> -1
# g(int8,int8): 2, 2 -> 0
# g(int8,int8): 1, 0 -> FAILURE
# g(int8,int8): -1, 0 -> FAILURE
# g(int8,int8): 0, 0 -> FAILURE
# g(int8,int8): 0, 1 -> 0
# g(int8,int8): 0, -1 -> 0
# g(int8,int8): -128, -128 -> 0
# g(int8,int8): -128, 127 -> -1

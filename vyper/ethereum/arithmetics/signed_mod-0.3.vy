@external
@pure
def f(a: int256, b: int256) -> int256:
    return a % b

@external
@pure
def g() -> int256:
    x: int256 = -(2**255)
    return x / -1
# ====
# compileToEwasm: also
# ----
# f(int256,int256): 7, 5 -> 2
# f(int256,int256): 7, -5 -> 2
# f(int256,int256): -7, 5 -> -2
# f(int256,int256): -7, 5 -> -2
# f(int256,int256): -5, -5 -> 0
# g() -> FAILURE

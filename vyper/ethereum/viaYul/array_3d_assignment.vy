@external
@pure
def f(n: uint256) -> uint256:
    a: uint256[4][3][2] = empty(uint256[4][3][2])
    a[1][1][1] = n
    b: uint256[4][3] = a[1]
    c: uint256[4] = b[1]
    return c[1]
    
# ====
# compileViaYul: also
# ----
# f(uint256): 42 -> 42

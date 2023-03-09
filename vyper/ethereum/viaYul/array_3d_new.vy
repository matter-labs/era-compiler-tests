@external
@pure
def f(n: uint256) -> uint256:
    a: uint256[4][3][2] = empty(uint256[4][3][2])
    a[1][1][1] = n
    return a[1][1][1]
    
# ====
# compileViaYul: also
# ----
# f(uint256): 42 -> 42

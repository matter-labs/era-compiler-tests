@external
@pure
def f(a: uint256) -> uint256:
    b: uint256 = a
    return b
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256): 6 -> 6

@external
@pure
def f() -> uint256:
    x: uint256 = empty(uint256)
    return x
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0

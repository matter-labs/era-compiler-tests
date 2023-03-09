@external
@pure
def f() -> uint256:
    return 7
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 7

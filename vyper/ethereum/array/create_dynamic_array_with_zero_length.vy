@external
def f() -> uint256:
    a: DynArray[DynArray[uint256, 1], 1] = []
    return 7
    
# ====
# compileToEwasm: also
# ----
# f() -> 7

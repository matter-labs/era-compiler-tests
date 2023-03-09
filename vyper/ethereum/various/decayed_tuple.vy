@external
def f() -> uint256:
    x: uint256 = 1
    (x) = 2
    return x
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 2

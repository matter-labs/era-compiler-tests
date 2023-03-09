@external
def f(k: uint256) -> uint256:
    return k
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256): 9 -> 9

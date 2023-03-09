@external
def f(x: uint256) -> uint256:
    return shift(x, 2)
    
# ====
# EVMVersion: >=constantinople
# compileViaYul: also
# ----
# f(uint256): 7 -> 28

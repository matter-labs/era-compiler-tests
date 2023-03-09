@external
def getX() -> uint256:
    return x

x: constant(uint256) = 56

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# getX() -> 56

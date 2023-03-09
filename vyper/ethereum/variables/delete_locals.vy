@external
def delLocal() -> (uint256, uint256):
    v: uint256 = 5
    w: uint256 = 6
    x: uint256 = 7
    v = empty(uint256)
    return w, x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# delLocal() -> 6, 7

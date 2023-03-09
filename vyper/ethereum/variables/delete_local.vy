@external
def delLocal() -> uint256:
    v: uint256 = 5
    v = empty(uint256)
    return v

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# delLocal() -> 0

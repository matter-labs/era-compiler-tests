@external
def create_() -> uint256:
    array: uint256[7] = empty(uint256[7])
    return 7

# ====
# compileViaYul: also
# ----
# create_() -> 7

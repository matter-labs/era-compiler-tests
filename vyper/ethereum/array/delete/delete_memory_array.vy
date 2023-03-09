@external
def _len() -> uint256:
    data: uint256[2] = empty(uint256[2])
    data[0] = 234
    data[1] = 123
    data = empty(uint256[2])
    return data[0]

# ====
# compileViaYul: also
# ----
# _len() -> 0

@external
def test() -> uint256:
    if (2**255 + 2**255  % 7 ) % 7 != uint256_addmod(2**255, 2**255, 7):
        return 1
    if (2**255 + 2**255  % 7 ) % 7 != uint256_addmod(2**255, 2**255, 7):
        return 2
    return 0

# ----
# test() -> 0

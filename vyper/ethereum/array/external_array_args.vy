@external
def test(a: uint256[8], b: uint256[3], c: uint256[5], a_index: uint256, b_index: uint256, c_index: uint256) -> (uint256, uint256, uint256):
    return (convert(a[a_index], uint256), b[b_index], c[c_index])

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test(uint256[8],uint256[3],uint256[5],uint256,uint256,uint256): 1, 2, 3, 4, 5, 6, 7, 8, 11, 12, 13, 21, 22, 23, 24, 25, 0, 1, 2 -> 1, 12, 23

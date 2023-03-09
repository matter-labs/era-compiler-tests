@external
@pure
def f(a: uint8[3], b: uint8[2][3], i: uint256, j: uint256, k: uint256) -> (uint256, uint256):
    return (convert(a[i], uint256), convert(b[j][k], uint256))
# ====
# compileViaYul: also
# ----
# f(uint8[3],uint8[2][3],uint256,uint256,uint256): 1, 2, 3, 11, 12, 21, 22, 31, 32, 1, 2, 1 -> 2, 32

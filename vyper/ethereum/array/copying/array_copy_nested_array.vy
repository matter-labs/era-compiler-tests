a: uint256[2][3]
b: uint256[2][3]
c: uint256[2][3]

@external
def test(d: uint256[2][3]) -> uint256:
    self.a = d
    self.b = self.a
    self.c = self.b
    return self.c[1][1]

# ====
# compileViaYul: also
# ----
# test(uint256[2][3]): 7, 8, 9, 10, 11, 12 -> 10
# gas irOptimized: 690205
# gas legacy: 686268
# gas legacyOptimized: 685688

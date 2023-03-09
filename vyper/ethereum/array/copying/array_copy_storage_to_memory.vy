a: uint256[3]

@external
def f() -> (uint256, uint256):
    self.a[0] = 1
    self.a[1] = 0
    self.a[2] = 0
    b: uint256[3] = self.a
    return (b[0], 3)

# ====
# compileViaYul: also
# ----
# f() -> 1, 3

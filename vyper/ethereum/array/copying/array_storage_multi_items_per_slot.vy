a: uint8[33]
b: uint8[9]
c: uint256[3]

@external
def f() -> (uint8, uint8, uint256):
    self.a[32] = 1
    self.a[31] = 2
    self.a[30] = 3

    self.b[0] = 1
    self.b[1] = 2
    self.b[2] = 3

    self.c[2] = 3
    self.c[1] = 1
    return (self.a[32], self.b[1], self.c[2])
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1, 2, 3
# gas irOptimized: 132298
# gas legacy: 134619
# gas legacyOptimized: 131940

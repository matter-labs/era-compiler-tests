a: uint8[33]

@external
def f() -> (uint8, uint8, uint8):
    self.a[0] = 2
    self.a[16] = 3
    self.a[32] = 4
    m: uint8[33] = self.a
    return (m[0], m[16], m[32])
# ----
# f() -> 2, 3, 4

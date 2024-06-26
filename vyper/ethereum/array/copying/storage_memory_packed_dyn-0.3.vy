a: DynArray[uint8, 100]

@external
def f() -> (uint8, uint8, uint8):
    for i in range(33):
        self.a.append(7)
    self.a[0] = 2
    self.a[16] = 3
    self.a[32] = 4
    m: DynArray[uint8, 100] = self.a
    return (m[0], m[16], m[32])

# ----
# f() -> 2, 3, 4
# gas irOptimized: 110135
# gas legacy: 126350
# gas legacyOptimized: 120704

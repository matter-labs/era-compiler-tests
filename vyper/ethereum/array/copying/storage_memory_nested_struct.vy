struct T:
    x: uint8
    y: uint8
    z: uint256[3]
    
a: T[3][2]
@external
def f() -> (uint8, uint8, uint256, uint8, uint8, uint256):
    self.a[0][1].x = 11
    self.a[0][1].y = 12
    self.a[0][1].z[0] = 1
    self.a[0][1].z[1] = 2
    self.a[0][1].z[2] = 3
    self.a[1][2].x = 21
    self.a[1][2].y = 22
    self.a[1][2].z[0] = 4
    self.a[1][2].z[1] = 5
    self.a[1][2].z[2] = 6
    m: T[3][2] = self.a
    return (
        m[0][1].x, m[0][1].y, m[0][1].z[0],
        m[1][2].x, m[1][2].y, m[1][2].z[0]
    )

# ====
# compileViaYul: also
# ----
# f() -> 11, 0x0c, 1, 0x15, 22, 4
# gas irOptimized: 291850
# gas legacy: 293516
# gas legacyOptimized: 290263

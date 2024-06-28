struct S:
    x: uint256
    y: uint256

@internal
def _f(r: uint256[6], s: S) -> (uint256, uint256, uint256, uint256):
    r[2] = 8
    s.x = 7
    return (r[0], r[1], s.x, s.y)

x: uint8
s: S
r: uint256[6]

@external
def __init__():
    self.x = 3

@external
def f() -> (uint256, uint256, uint256, uint256, uint256, uint256):
    self.r[0] = 1
    self.r[1] = 2
    self.r[2] = 3
    self.s.x = 11
    self.s.y = 12
    a: uint256 = 0
    b: uint256 = 0
    c: uint256 = 0
    d: uint256 = 0
    a, b, c, d = self._f(self.r, self.s)
    return (self.r[2], self.s.x, a, b, c, d)

# ----
# f() -> 8, 7, 1, 2, 7, 12
# gas irOptimized: 167446
# gas legacy: 169347
# gas legacyOptimized: 167269

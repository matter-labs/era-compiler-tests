struct S:
    x: uint8
    y: uint16
    z: uint256
    a: uint8[2]
    
data: S[5]

@external
def testInit() -> (uint8, uint16, uint256, uint8, bool):
    d: S[2] =  empty(S[2])
    return d[0].x, d[0].y, d[0].z, d[0].a[1], True

@external
def testCopyRead() -> (uint8, uint16, uint256, uint8):
    self.data[2].x = 1
    self.data[2].y = 2
    self.data[2].z = 3
    self.data[2].a[1] = 4
    s: S = self.data[2]
    return s.x, s.y, s.z, s.a[1]

@external
def testAssign() -> (uint8, uint16, uint256, uint8):
    s: S = empty(S)
    s.x = 1
    s.y = 2
    s.z = 3
    s.a[1] = 4
    return s.x, s.y, s.z,s.a[1]

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# testInit() -> 0, 0, 0, 0, true
# testCopyRead() -> 1, 2, 3, 4
# testAssign() -> 1, 2, 3, 4

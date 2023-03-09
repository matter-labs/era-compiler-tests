struct S:
    x: uint8
    y: uint16
    z: uint256
    
struct X:
    x: uint8
    s: S
    a: uint8[2]
    
m_x: X

@external
def load() -> (uint256, uint256, uint256, uint256, uint256, uint256):
    self.m_x.x = 1
    self.m_x.s.x = 2
    self.m_x.s.y = 3
    self.m_x.s.z = 4
    self.m_x.a[0] = 5
    self.m_x.a[1] = 6
    d: X = self.m_x
    return convert(d.x, uint256), convert(d.s.x, uint256), convert(d.s.y, uint256), d.s.z, convert(d.a[0], uint256), convert(d.a[1], uint256)

@external
def store() -> (uint256, uint256, uint256, uint256, uint256, uint256):
    d: X= empty(X)
    d.x = 1
    d.s.x = 2
    d.s.y = 3
    d.s.z = 4
    d.a[0] = 5
    d.a[1] = 6
    self.m_x = d
    return convert(self.m_x.x, uint256), convert(self.m_x.s.x, uint256), convert(self.m_x.s.y, uint256), self.m_x.s.z, convert(self.m_x.a[0], uint256), convert(self.m_x.a[1], uint256)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# load() -> 0x01, 0x02, 0x03, 0x04, 0x05, 0x06
# gas irOptimized: 111179
# gas legacy: 112999
# gas legacyOptimized: 110881
# store() -> 0x01, 0x02, 0x03, 0x04, 0x05, 0x06

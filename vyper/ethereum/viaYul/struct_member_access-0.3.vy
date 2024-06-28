struct S:
    a: uint256
    b: uint256[3]
    c: uint256

s: S

@external
def __init__():
    self.s.a = 42
    self.s.b[0] = 1
    self.s.b[1] = 2
    self.s.b[2] = 3
    self.s.c = 21

@external
@pure
def f(m_: S) -> (uint256, uint256[3], uint256):
    m: S = m_
    return (m.a, m.b, m.c)

@external
@pure
def g(c: S) -> (uint256, uint256, uint256, uint256, uint256, uint256):
    return (c.a, 3, c.c, c.b[0], c.b[1], c.b[2])
    
@external
@pure
def g2(c1: S, c2: S) -> (uint256, uint256, uint256, uint256, uint256, uint256):
    return (c1.a, c1.c, c2.a, 1, c2.c, c2.b[0])

@external
@view
def h() -> (uint256, uint256, uint256, uint256, uint256, uint256):
    return (self.s.a, 3, self.s.c, self.s.b[0], self.s.b[1], self.s.b[2])

# ----
# f((uint256,uint256[3],uint256)): 42, 1, 2, 3, 21  -> 42, 1, 2, 3, 21
# g((uint256,uint256[3],uint256)): 42, 1, 2, 3, 21  -> 42, 3, 21, 1, 2, 3
# g2((uint256,uint256[3],uint256),(uint256,uint256[3],uint256)): 42, 1, 2, 0, 21, 7, 17, 0, 0, 9 -> 42, 21, 7, 1, 9, 17
# h() -> 42, 3, 21, 1, 2, 3

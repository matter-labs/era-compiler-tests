struct S:
    p1: uint128
    a: uint256[2][2]
    p2: uint32

struct S1:
    u: uint128
    s:S

struct S2:
    array: S[2]

@internal
def f1(c: S1) -> S1:
    return c

@external
def f(c: S1, p: uint32) -> (uint32, uint128, uint256, uint256, uint32):
    m: S1 = self.f1(c)
    assert m.s.a[0][0] == c.s.a[0][0]
    assert m.s.a[1][1] == c.s.a[1][1]
    return (p, m.s.p1, m.s.a[0][0], m.s.a[1][1], m.s.p2)

@external
def g(c: S2) -> (uint128, uint256, uint256, uint32):
    m: S2 = c
    assert m.array[0].a[0][0] == c.array[0].a[0][0]
    assert m.array[0].a[1][1] == c.array[0].a[1][1]
    return (m.array[1].p1, m.array[1].a[0][0], m.array[1].a[1][1], m.array[1].p2)

@external
def h(c: S1, p: uint32) -> (uint32, uint128, uint256, uint256, uint32):
    m: S = c.s
    assert m.a[0][0] == c.s.a[0][0]
    assert m.a[1][1] == c.s.a[1][1]
    return (p, m.p1, m.a[0][0], m.a[1][1], m.p2)

# ----
# f((uint128,(uint128,uint256[2][2],uint32)),uint32): 11, 22, 1, 2, 1, 2, 33, 44 -> 44, 22, 1, 2, 33
# g(((uint128,uint256[2][2],uint32)[2])): 22, 1, 2, 1, 2, 33, 22, 1, 2, 1, 2, 33 -> 22, 1, 2, 33
# h((uint128,(uint128,uint256[2][2],uint32)),uint32): 11, 22, 1, 2, 1, 2, 33, 44 -> 44, 22, 1, 2, 33

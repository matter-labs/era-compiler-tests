struct S:
    x: uint256
    y: uint128
    z: uint32
    a1: uint128[3]
    a2: DynArray[uint128, 1]
    
b: uint8
s: DynArray[S, 1]
a: uint8

@external
def __init__():
    self.b = 23
    self.a = 17
    
@external
def f():
    self.s.append(empty(S))
    assert self.s[0].x == 0
    assert self.s[0].y == 0
    assert self.s[0].z == 0
    assert self.s[0].a1[0] == 0
    assert self.s[0].a1[1] == 0
    assert self.s[0].a1[2] == 0
    assert len(self.s[0].a2) == 0
    assert self.b == 23
    assert self.a == 17
    
# ----
# f() ->

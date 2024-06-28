struct S:
    x: uint256
    y: uint128
    z: uint32
    
b: uint8
s: S
a: uint8

@external
def __init__():
    self.b = 23
    self.a = 17
    
@external
def f():
    self.s.x = 42
    self.s.y = 42
    self.s.y = 42
    self.s = empty(S)
    assert self.s.x == 0
    assert self.s.y == 0
    assert self.s.z == 0
    assert self.b == 23
    assert self.a == 17
    
# ----
# f() ->

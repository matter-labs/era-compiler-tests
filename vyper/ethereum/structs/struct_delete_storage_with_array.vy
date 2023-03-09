struct S:
    a: uint128
    x: uint256[3]
    b: uint240
    
b: uint8
s: S
a: uint8

@external
def __init__():
    self.b = 23
    self.a = 17
    
@external
def f():
    self.s = empty(self.s)
    self.s.x[0] = 42
    self.s.x[1] = 42
    self.s.x[2] = 42
    self.s = empty(S)
    assert self.s.x[0] == 0
    assert self.s.x[1] == 0
    assert self.s.x[2] == 0
    assert b == 23
    assert a == 17
    
@external
def g():
    self.s = empty(self.s)
    self.s.x[0] = 42
    self.s.x[1] = 42
    self.s.x[2] = 42
    self.s.a = 1
    self.s.b = 2
    self.s.x = empty(uint256[3])
    assert self.s.x[0] == 0
    assert self.s.x[1] == 0
    assert self.s.x[2] == 0
    assert b == 23
    assert a == 17
    assert self.s.a == 1
    assert self.s.b == 2

# ====
# compileViaYul: also
# ----
# f() ->
# gas irOptimized: 121618
# gas legacy: 122132
# gas legacyOptimized: 121500
# g() ->

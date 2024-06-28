struct S:
    a: uint32
    b: uint128
    c: uint256
    
struct X:
    a: uint256
    s: S

r: uint256[79]
x: X

@external
def f() -> (uint32, uint128, uint256):
    m: X = X({a: 12, s: S({a: 42, b: 23, c: 34})})
    self.x = m
    return (self.x.s.a, self.x.s.b, self.x.s.c)

# ----
# f() -> 42, 23, 34

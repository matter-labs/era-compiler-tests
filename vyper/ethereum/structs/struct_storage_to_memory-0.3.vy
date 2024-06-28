struct S:
    a: uint32
    b: uint128
    c: uint256

struct X:
    a: uint32
    s: S
    
arr: uint256[79]
x: X

@external
def __init__():
    self.x = X({a: 12, s: S({a: 42, b: 23, c: 34})})
    
@external
def f() -> (uint32, uint128, uint256):
    m: X = self.x
    return (m.s.a, m.s.b, m.s.c)

# ----
# f() -> 42, 23, 34

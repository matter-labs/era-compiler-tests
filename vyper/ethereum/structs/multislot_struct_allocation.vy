struct I:
    b: uint256
    c: uint256
    
struct S:
    a: I
    
@external
def f() -> uint256:
    s: S = S(a=I(b=1, c=2))
    return s.a.c

# ====
# compileViaYul: also
# ----
# f() -> 2

struct S:
    a: uint256
    
s: S
m: HashMap[uint256, S]

@external
def f() -> bool:
    self.s.a = 12
    self.m[1] = self.s
    return self.m[1].a == 12

# ====
# compileViaYul: also
# ----
# f() -> true

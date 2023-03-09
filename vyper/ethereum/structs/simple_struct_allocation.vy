struct S:
    a: uint256

@external
def f() -> uint256:
    s: S = S({a: 1})
    return s.a

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1

x: constant(uint256) = 291 + 1110

@external
def f() -> uint256:
    return x + 1

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x57a

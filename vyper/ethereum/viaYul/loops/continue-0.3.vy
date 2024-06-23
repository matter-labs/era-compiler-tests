@external
def f() -> uint256:
    x: uint256 = 1
    for a in range(10):
        continue
        x = x + x
    x = x + 10
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 11

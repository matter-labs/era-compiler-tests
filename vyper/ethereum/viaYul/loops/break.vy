@external
def f() -> uint256:
    x: uint256 = 1
    for a: uint256 in range(10):
        x = x + x
        break
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 2

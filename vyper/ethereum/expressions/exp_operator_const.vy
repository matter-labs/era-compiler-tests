@external
def f() -> uint256:
    return 2 ** 3

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 8

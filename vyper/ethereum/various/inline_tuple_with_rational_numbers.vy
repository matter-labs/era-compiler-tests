@external
def f() -> int8:
    foo3: int8[5] = [1, -1, 0, 0, 0]
    return foo3[0]

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1

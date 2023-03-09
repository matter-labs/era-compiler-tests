@external
def f() -> bool:
    return msg.gas > 0

# ====
# compileToEwasm: also
# ----
# f() -> true
# f() -> true
# f() -> true

@external
def f() -> bytes32:
    return blockhash(1)

@external
def g() -> bytes32:
    return blockhash(2)

@external
def h() -> bytes32:
    return blockhash(3)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x3737373737373737373737373737373737373737373737373737373737373738
# g() -> 0x3737373737373737373737373737373737373737373737373737373737373739
# h() -> 0x373737373737373737373737373737373737373737373737373737373737373a

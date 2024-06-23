s: Bytes[100]

@deploy
def __init__():
    self.s = convert("abcd", Bytes[100])

@external
def f() -> bytes32:
    data: Bytes[100] = self.s
    return convert(slice(data, 0, 1), bytes32)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> "a"

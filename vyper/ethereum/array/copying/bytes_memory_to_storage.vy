s: Bytes[100]

@external
def f() -> bytes32:
    data: Bytes[100] = convert("abcd", Bytes[100])
    self.s = data
    return convert(slice(self.s, 0, 1), bytes32)
# ----
# f() -> "a"

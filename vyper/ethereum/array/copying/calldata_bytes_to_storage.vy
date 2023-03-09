s: Bytes[100]
@external
def f(data: Bytes[100]) -> bytes32:
    self.s = data
    return convert(slice(self.s, 0, 1), bytes32)
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bytes): 0x20, 0x08, "abcdefgh" -> "a"

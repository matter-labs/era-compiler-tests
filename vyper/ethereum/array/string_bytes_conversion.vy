s: String[100]
b: Bytes[100]

@external
def f(_s: String[100], n: uint256) -> bytes32:
    self.b = convert(_s, Bytes[100])
    self.s = convert(self.b, String[100])
    return convert(slice(convert(self.s, Bytes[100]), n, 1), bytes32)
    
@external
def l() -> uint256:
    return len(convert(self.s, Bytes[100]))
# ====
# compileViaYul: also
# ----
# f(string,uint256): 0x40, 0x02, 0x06, "abcdef" -> "c"
# l() -> 0x06

struct s:
    x: uint256
    y: uint256
    a: String[100]
    b: String[100]

p: public(s[2])

@external
def __init__():
    m: s = empty(s)
    m.x = convert(0xbbbb, uint256)
    m.y = convert(0xcccc, uint256)
    m.a = "hello"
    m.b = "world"
    self.p[0] = m

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# p(uint256): 0x0 -> 0x20, 0xbbbb, 0xcccc, 0x80, 0xc0, 0x05, "hello", 0x05, "world"

struct S:
    a: uint256
    b: Bytes[100]

shifter: uint256
s: public(S)

@external
def __init__():
    self.s.a = 7
    self.s.b = b"abc"

# ====
# compileViaYul: also
# ----
# s() -> 0x20, 0x07, 0x40, 0x03, 0x6162630000000000000000000000000000000000000000000000000000000000

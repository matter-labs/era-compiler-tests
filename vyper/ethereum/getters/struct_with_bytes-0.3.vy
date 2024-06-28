struct S:
    a: uint256
    b: Bytes[100]
    d: uint256[1]
    
shifter: uint256
s: public(S)

@external
def __init__():
    self.s.a = 7
    self.s.b = b"abc"
    self.s.d[0] = 10

# ----
# s() -> 0x20, 7, 0x60, 10, 3, 0x6162630000000000000000000000000000000000000000000000000000000000

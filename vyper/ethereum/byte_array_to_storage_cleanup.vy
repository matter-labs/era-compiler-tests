event ev:
    _: DynArray[uint256, 2]
    __: uint256

s: public(Bytes[100])

@external
def h() -> Bytes[100]:
    x: DynArray[uint256, 2] = [0, 0]
    log ev(_=x, __=convert(0x21, uint256))
    m: Bytes[100] = b"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    self.s = m
    self.s = slice(concat(self.s, b"\x00"), 0, 64)
    return self.s

@external
def f(c: Bytes[100]) -> Bytes[100]:
    self.s = c
    self.s = slice(concat(self.s, b"\x00"), 0, 34)
    return self.s
    
# ----
# constructor() ->
# gas irOptimized: 521983
# gas legacy: 731840
# gas legacyOptimized: 494859
# h() -> 0x20, 0x40, 0x00, 0
# ~ emit ev(uint256[],uint256): 0x40, 0x21, 0x02, 0x00, 0x00
# f(bytes): 0x20, 33, 0, -1 -> 0x20, 0x22, 0, 0xff00000000000000000000000000000000000000000000000000000000000000

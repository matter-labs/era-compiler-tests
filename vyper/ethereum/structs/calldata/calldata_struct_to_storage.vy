struct S:
    a: uint256
    b: uint64
    c: bytes2

r: uint256[153]
s: S

@external
def f(a: uint32, c: S, b: uint256) -> (uint256, uint256, bytes1):
    self.s = c
    return (self.s.a, convert(self.s.b, uint256), convert(slice(convert(self.s.c, bytes32), 1, 1), bytes1))

# ----
# f(uint32,(uint256,uint64,bytes2),uint256): 1, 42, 23, "ab", 1 -> 42, 23, "b"

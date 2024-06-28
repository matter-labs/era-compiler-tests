struct S:
    a: uint256
    b: Bytes[100]
    c: uint256
    
@external
@pure
def f(c: S) -> (uint256, bytes1, bytes1, uint256):
    m: S = c
    return (m.a, convert(slice(m.b, 0, 1), bytes1), convert(slice(m.b, 1, 1), bytes1), m.c)

# ----
# f((uint256,bytes,uint256)): 0x20, 42, 0x60, 23, 2, "ab" -> 42, "a", "b", 23

struct S:
    a: uint64
    b: Bytes[100]
    
struct S1:
    a: uint256
    s: S
    c: uint256

@external
@pure
def f(s1: S1) -> (uint256, uint64, bytes1, uint256):
    return s1.a, s1.s.a, convert(slice(s1.s.b, 0, 1), bytes1), s1.c

# ====
# compileViaYul: also
# ----
# f((uint256,(uint64,bytes),uint256)): 0x20, 42, 0x60, 23, 1, 0x40, 2, "ab" -> 42, 1, "a", 23

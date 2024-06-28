struct S:
    a: uint256
    b: uint256
    c: bytes2
    
@external
@pure
def f(s: S) -> (uint256, uint256, bytes1):
    m: S = s
    return (m.a, m.b, convert(slice(convert(m.c, bytes32), 1, 1), bytes1))

# ----
# f((uint256,uint256,bytes2)): 42, 23, "ab" -> 42, 23, "b"

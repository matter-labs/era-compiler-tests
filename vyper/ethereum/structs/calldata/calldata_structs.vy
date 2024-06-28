struct S1:
    a: uint256
    b: uint256

struct S2:
    a: uint256

@external
@pure
def f(s1: S1, s2: S2, s3: S1) -> (uint256, uint256, uint256, uint256, uint256):
    return s1.a, s1.b, s2.a, s3.a, s3.b

# ----
# f((uint256,uint256),(uint256),(uint256,uint256)): 1, 2, 3, 4, 5 -> 1, 2, 3, 4, 5

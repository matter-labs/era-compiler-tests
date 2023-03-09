interface Self:
    def g(b: B) -> uint256: pure
    
struct A:
    a: uint256
    b: uint256[20]
    
struct B:
    a: A
    b: uint256
    
@external
@pure
def g(b: B) -> uint256:
    return b.b
    
@external
@view
def f() -> (uint256, uint256):
    arr: uint256[20] = empty(uint256[20])
    arr[0] = 31
    arr[2] = 84
    b: B = B({a: A({a: 420, b: arr}), b: 11})
    return (b.b, Self(self).g(b))

# ====
# compileViaYul: also
# ----
# f() -> 11, 11

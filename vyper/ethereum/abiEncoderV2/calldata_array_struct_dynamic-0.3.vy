interface Self:
    def f(s: DynArray[S, 1]) -> Bytes[300]: pure
    
struct S:
    a: DynArray[uint256, 3]
    
@external
@pure
def f(s: DynArray[S, 1]) -> Bytes[300]:
    return _abi_encode(s)
    
@external
@view
def g(s: DynArray[S, 1]) -> Bytes[300]:
    return Self(self).f(s)
    
# ====
# EVMVersion: >homestead
# ----
# f((uint256[])[]): 32, 1, 32, 32, 3, 17, 42, 23 -> 32, 256, 32, 1, 32, 32, 3, 17, 42, 23
# g((uint256[])[]): 32, 1, 32, 32, 3, 17, 42, 23 -> 32, 256, 32, 1, 32, 32, 3, 17, 42, 23

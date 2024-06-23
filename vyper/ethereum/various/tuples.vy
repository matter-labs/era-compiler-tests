interface Self:
    def h() -> (uint256, uint256): nonpayable
    
data: DynArray[uint256, 1]
m_c: DynArray[uint256, 1]

@internal
def g() -> (uint256, uint256, DynArray[uint256, 1]):
    return (1, 2, self.data)

@external
def h() -> (uint256, uint256):
    return (5, 6)

@external
def f() -> uint256:
    self.data.append(3)
    a: uint256 = 0
    b: uint256 = 0
    (a, b) = extcall Self(self).h()
    if a != 5 or b != 6:
        return 1
    c: DynArray[uint256, 1] = self.m_c
    (a, b, c) = self.g()
    if a != 1 or b != 2 or c[0] != 3:
        return 2
    return 0
    
# ----
# f() -> 0

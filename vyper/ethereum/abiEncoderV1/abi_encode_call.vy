x: bool

@external
def c(a: uint256, b: uint256[2]):
    assert a == 5
    assert b[0] == 6
    assert b[1] == 7
    self.x = True

@external
def f() -> bool:
    a: uint256 = 5
    b: uint256[2] = empty(uint256[2])
    b[0] = 6
    b[1] = 7
    raw_call(self, _abi_encode(a, b, method_id=method_id("c(uint256,uint256[2])")))
    return self.x

# ----
# f() -> true

@internal
def f(a: uint256) -> uint256:
    return a

@external
def test(a: uint256, b: uint256) -> (uint256, uint256):
    return self.f(a + 7), b

# ----
# test(uint256,uint256): 2, 3 -> 9, 3

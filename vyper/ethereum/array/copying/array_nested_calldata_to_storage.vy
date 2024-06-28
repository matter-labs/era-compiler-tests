a4: uint256[2][2]

@external
def test4(c: uint256[2][2]) -> uint256:
    self.a4 = c
    assert self.a4[0][0] == c[0][0]
    assert self.a4[0][1] == c[0][1]
    return (self.a4[0][0] + self.a4[1][1])

# ----
# test4(uint256[2][2]): 23, 42, 23, 42 -> 65
# gas irOptimized: 111428

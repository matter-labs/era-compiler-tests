@external
def test4(c: uint256[2][2]) -> uint256:
    a4: uint256[2][2] = c
    assert a4[0][0] == c[0][0]
    assert a4[0][1] == c[0][1]
    return (a4[0][0] + a4[1][1])

# ====
# compileViaYul: also
# ----
# test4(uint256[2][2]): 23, 42, 23, 42 -> 65

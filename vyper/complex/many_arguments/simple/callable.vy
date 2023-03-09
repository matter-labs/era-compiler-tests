@external
@pure
def f(p1: uint256, p2: uint256, p3: uint8, p4: uint256, p5: uint256, p6: uint256, p7: uint256, p8: uint256) -> uint256:
    return p1 + p2 + convert(p3, uint256) + p4 + p5 + p6 + p7 + p8

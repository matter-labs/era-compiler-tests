import callable as Callable

@external
def main(p1: uint256, p2: uint256, p3: uint8, p4: uint256, p5: uint256, p6: uint256, p7: uint256, p8: uint256, callable: address) -> uint256:
    return Callable(callable).f(p1, p2, p3, p4, p5, p6, p7, p8) * 2

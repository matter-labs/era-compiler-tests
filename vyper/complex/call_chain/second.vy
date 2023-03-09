import third as Third

@external
@pure
def f(p: uint256, third: address) -> uint256:
    return Third(third).f(p) * 2

interface Third:
    def f(p: uint256) -> uint256: pure

@external
@pure
def f(p: uint256, third: address) -> uint256:
    return staticcall Third(third).f(p) * 2

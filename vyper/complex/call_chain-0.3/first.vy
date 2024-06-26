import second as Second

@external
@pure
def f(p: uint256, second: address, third: address) -> uint256:
    return Second(second).f(p, third)

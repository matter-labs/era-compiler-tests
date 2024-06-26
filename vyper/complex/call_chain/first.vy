interface Second:
    def f(p: uint256, third_implementation: address) -> uint256: pure

@external
@pure
def f(p: uint256, second: address, third: address) -> uint256:
    return staticcall Second(second).f(p, third)

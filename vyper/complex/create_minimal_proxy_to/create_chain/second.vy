interface Third:
    def f(p: uint256) -> uint256: pure

@external
def f(p: uint256, third_implementation: address) -> uint256:
    third: address = create_forwarder_to(third_implementation)
    return staticcall Third(third).f(p) * 2

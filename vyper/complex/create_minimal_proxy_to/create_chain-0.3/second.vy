import third as Third

@external
def f(p: uint256, third_implementation: address) -> uint256:
    third: address = create_forwarder_to(third_implementation)
    return Third(third).f(p) * 2

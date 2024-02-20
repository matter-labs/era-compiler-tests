import second as Second

@external
def f(p: uint256, second_implementation: address, third_implementation: address) -> uint256:
    second: address = create_forwarder_to(second_implementation)
    return Second(second).f(p, third_implementation)

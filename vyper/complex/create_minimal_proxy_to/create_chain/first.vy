interface Second:
    def f(p: uint256, third_implementation: address) -> uint256: nonpayable

@external
def f(p: uint256, second_implementation: address, third_implementation: address) -> uint256:
    second: address = create_forwarder_to(second_implementation)
    return extcall Second(second).f(p, third_implementation)

import second as Second

@external
def f(p: uint256, second_implementation: address, third_implementation: address) -> uint256:
    second: address = create_from_blueprint(second_implementation, salt=convert(convert("second", Bytes[6]), bytes32))
    return Second(second).f(p, third_implementation)

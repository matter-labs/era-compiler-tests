import third as Third

@external
def f(p: uint256, third_implementation: address) -> uint256:
    third: address = create_copy_of(third_implementation, salt=convert(convert("third", Bytes[5]), bytes32))
    return Third(third).f(p) * 2

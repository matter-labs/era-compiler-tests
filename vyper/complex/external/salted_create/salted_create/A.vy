import B as B

@external
def different_salt(_b: address) -> bool:
    x: address = create_forwarder_to(_b, salt = convert(convert("abc", Bytes[3]), bytes32))
    y: address = create_forwarder_to(_b, salt = convert(convert("abcef", Bytes[5]), bytes32))
    return x != y

@external
def same_salt(_b: address) -> bool:
    x: address = create_forwarder_to(_b, salt = convert(convert("xyz", Bytes[3]), bytes32))
    y: address = create_forwarder_to(_b, salt = convert(convert("xyz", Bytes[3]), bytes32))
    assert y != convert(0, address)
    return True

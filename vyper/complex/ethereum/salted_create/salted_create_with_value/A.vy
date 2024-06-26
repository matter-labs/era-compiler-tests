interface B:
    def init_(_x: uint256): payable
    def getBalance() -> uint256: view

@external
@payable
def f(_b1: address, _b2: address, _b3: address) -> (uint256, uint256, uint256):
    x: address = create_forwarder_to(_b1, salt = convert(convert("abc", Bytes[3]), bytes32), value = 3)
    extcall B(x).init_(7)
    y: address = create_forwarder_to(_b2, value = 3, salt = convert(convert("abc", Bytes[3]), bytes32))
    extcall B(y).init_(8)
    z: address = create_forwarder_to(_b3, salt = convert(convert("abc", Bytes[3]), bytes32), value = 3)
    extcall B(z).init_(9)
    return (staticcall B(x).getBalance(), staticcall B(y).getBalance(), staticcall B(z).getBalance())
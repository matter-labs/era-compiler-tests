struct str:
    a: uint8
    b: uint16
    c: uint248

data: str

@external
def test() -> uint256:
    self.data.a = 2
    if self.data.a != 2:
        return 2
    self.data.b = convert(0xabcd, uint16)
    if self.data.b != convert(0xabcd, uint16):
        return 3
    self.data.c = convert(0x1234567890, uint248)
    if self.data.c != convert(0x1234567890, uint248):
        return 4
    if self.data.a != 2:
        return 5
    self.data.a = 8
    if self.data.a != 8:
        return 6
    if self.data.b != convert(0xabcd, uint16):
        return 7
    self.data.b = convert(0xdcab, uint16)
    if self.data.b != convert(0xdcab, uint16):
        return 8
    if self.data.c != convert(0x1234567890, uint248):
        return 9
    self.data.c = convert(0x9876543210, uint248)
    if self.data.c != convert(0x9876543210, uint248):
        return 10
    return 1

# ----
# test() -> 1

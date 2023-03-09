struct str:
    a: uint8
    b: uint16
    c: uint8
    
x: uint8
y: uint16
data: str

@external
def test() -> uint256:
    self.x = 1
    self.y = 2
    self.data.a = 2
    self.data.b = convert(0xabcd, uint16)
    self.data.c = convert(0xfa, uint8)
    if self.x != 1 or self.y != 2 or self.data.a != 2 or self.data.b != convert(0xabcd, uint16) or self.data.c != convert(0xfa, uint8):
        return 2
    self.y = empty(uint16)
    self.data.b = empty(uint16)
    if self.x != 1 or self.y != 0 or self.data.a != 2 or self.data.b != 0 or self.data.c != convert(0xfa, uint8):
        return 3
    self.x = empty(uint8)
    self.data = empty(str)
    return 1
    
# ====
# compileViaYul: also
# ----
# test() -> 1
# storageEmpty -> 1

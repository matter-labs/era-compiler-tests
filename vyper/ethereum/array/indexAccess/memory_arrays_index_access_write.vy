@internal
def set(x: uint8[3][4]):
    x[2][2] = 1
    x[3][2] = 7

@external
def f() -> uint8[3][4]:
    data: uint8[3][4] = empty(uint8[3][4])
    self.set(data)
    return data
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x07

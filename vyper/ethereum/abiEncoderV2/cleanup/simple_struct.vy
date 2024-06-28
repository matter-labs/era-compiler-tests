struct S:
    a: uint8
    b: bytes1

@external
@view
def gg(_s: S) -> Bytes[68]:
    s: S = _s
    s.a = 0
    s.b = 0x00 # only this will validate.
    return slice(msg.data, 0, 68)

# ----
# gg((uint8,bytes1)): 1, left(0x01) -> 0x20, 0x44, hex"b63240b0", 1, left(0x01), hex"00000000000000000000000000000000000000000000000000000000"
# gg((uint8,bytes1)): 0x0101, left(0x0101) -> FAILURE

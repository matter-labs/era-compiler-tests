@external
@view
def ggg(s: DynArray[uint8, 10]) -> Bytes[200]:
    _: uint8 = s[0] # only this will validate.
    return slice(msg.data, 0, 132)

# ----
# ggg(uint8[]): 0x20, 2, 1, 1 -> 0x20, 0x84, hex"304a4c23", 0x20, 2, 1, 1, hex"00000000000000000000000000000000000000000000000000000000"
# ggg(uint8[]): 0x20, 2, 0x0101, 0x0101 -> FAILURE

@external
@view
def gggggggg(s: uint8[2]) -> Bytes[100]:
    tmp: uint8 = s[0] # only this will validate.
    return slice(msg.data, 0, 68)
    
# ----
# gggggggg(uint8[2]): 1, 1 -> 0x20, 0x44, hex"78b86ac6", 1, 1, hex"00000000000000000000000000000000000000000000000000000000"
# gggggggg(uint8[2]): 0x0101, 0x0101 -> FAILURE

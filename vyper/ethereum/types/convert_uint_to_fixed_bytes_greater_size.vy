@external
def UintToBytes(h: uint16) -> bytes8:
    return convert(convert(h, uint64), bytes8)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# UintToBytes(uint16): 0x6162 -> "\x00\x00\x00\x00\x00\x00ab"

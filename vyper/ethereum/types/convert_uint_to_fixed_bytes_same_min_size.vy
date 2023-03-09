@external
def UintToBytes(h: uint8) -> bytes1:
    return convert(h, bytes1)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# UintToBytes(uint8): 0x61 -> "a"

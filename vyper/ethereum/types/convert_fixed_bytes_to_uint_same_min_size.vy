@external
def bytesToUint(s: bytes1) -> uint8:
    return convert(s, uint8)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# bytesToUint(bytes1): "a" -> 0x61

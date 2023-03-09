@external
def bytesToUint(s: bytes4) -> uint64:
    return convert(convert(s, uint32), uint64)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# bytesToUint(bytes4): "abcd" -> 0x61626364

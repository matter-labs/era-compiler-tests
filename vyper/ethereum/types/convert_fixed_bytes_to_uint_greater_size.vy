@external
def bytesToUint(s: bytes4) -> uint64:
    return convert(convert(s, uint32), uint64)
    
# ----
# bytesToUint(bytes4): "abcd" -> 0x61626364

@external
def uintToBytes(h: uint256) -> bytes2:
    return convert(convert(h, uint16), bytes2)

# ----
# uintToBytes(uint32): 0x61626364 -> FAILURE

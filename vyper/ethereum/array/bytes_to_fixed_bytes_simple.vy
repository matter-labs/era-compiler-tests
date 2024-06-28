s: Bytes[16]
sLong: Bytes[32]

@deploy
def __init__():
    self.s = b"abcdefghabcdefgh"
    self.sLong = b"abcdefghabcdefghabcdefghabcdefgh"

@external
def fromMemory(_m: Bytes[16]) -> bytes16:
    m: Bytes[16] = _m
    return convert(m, bytes16)

@external
def fromCalldata(c: Bytes[16]) -> bytes16:
    return convert(c, bytes16)

@external
def fromStorage() -> bytes16:
    return convert(self.s, bytes16)
    
@external
def fromStorageLong() -> bytes32:
    return convert(self.sLong, bytes32)
    
@external
def fromSlice(c: Bytes[100]) -> bytes8:
    return convert(slice(c, 1, 8), bytes8)
    
# ----
# fromMemory(bytes): 0x20, 16, "abcdefghabcdefgh" -> "abcdefghabcdefgh"
# fromCalldata(bytes): 0x20, 16, "abcdefghabcdefgh" -> "abcdefghabcdefgh"
# fromStorage() -> "abcdefghabcdefgh"
# fromStorageLong() -> "abcdefghabcdefghabcdefghabcdefgh"
# fromSlice(bytes): 0x20, 16, "abcdefghabcdefgh" -> "bcdefgha"

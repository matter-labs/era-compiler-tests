s: Bytes[32]

@deploy
def __init__():
    self.s = b"abcdefghabcdefghabcdefghabcdefg"

@external
def fromMemory(_m: Bytes[16]) -> bytes16:
    m: Bytes[16] = _m
    return convert(m, bytes16)

@external
def fromCalldata(c: Bytes[16]) -> bytes16:
    return convert(c, bytes16)

@external
def fromStorage() -> bytes32:
    return convert(self.s, bytes32)

@external
def fromSlice(c: Bytes[100]) -> bytes8:
    return convert(slice(c, 0, 6), bytes8)

# ====
# compileViaYul: true
# ----
# fromMemory(bytes): 0x20, 14, "abcdefghabcdefgh" -> "abcdefghabcdef\0\0"
# fromCalldata(bytes): 0x20, 15, "abcdefghabcdefgh" -> "abcdefghabcdefg\0"
# fromStorage() -> "abcdefghabcdefghabcdefghabcdefg\0"
# fromSlice(bytes): 0x20, 15, "abcdefghabcdefgh" -> "abcdef\0\0"

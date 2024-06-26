s: Bytes[100]

@external
def __init__():
    self.s = b"abcdefghabcdefghabcdefghabcdefgha"

@external
def fromMemory(_m: Bytes[100]) -> bytes32:
    m: Bytes[100] = _m
    return extract32(m, 0)

@external
def fromCalldata(c: Bytes[100]) -> bytes32:
    return extract32(c, 0)

@external
def fromStorage() -> bytes32:
    return extract32(self.s, 0)

@external
def fromSlice(c: Bytes[100]) -> bytes32:
    return extract32(slice(c, 0, 33), 0)

# ----
# fromMemory(bytes): 0x20, 33, "abcdefghabcdefghabcdefghabcdefgh", "a" -> "abcdefghabcdefghabcdefghabcdefgh"
# fromCalldata(bytes): 0x20, 33, "abcdefghabcdefghabcdefghabcdefgh", "a" -> "abcdefghabcdefghabcdefghabcdefgh"
# fromStorage() -> "abcdefghabcdefghabcdefghabcdefgh"
# fromSlice(bytes): 0x20, 33, "abcdefghabcdefghabcdefghabcdefgh", "a" -> "abcdefghabcdefghabcdefghabcdefgh"

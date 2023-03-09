@external
def fixedBytesHex() -> bytes32:
    return convert(0xaabb00ff, bytes32)
    
@external
def fixedBytes() -> bytes32:
    return convert(b"abc\x00\xff__", bytes32)
    
@external
def pipeThrough(small: bytes2, one: bool) -> (bytes16, bool):
    oneRet: bool = one
    large: bytes16 = convert(small, bytes16)
    return large, one

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# fixedBytesHex() -> "\xaa\xbb\x00\xff"
# fixedBytes() -> "abc\x00\xff__"
# pipeThrough(bytes2,bool): "\x00\x02", true -> "\x00\x02", true

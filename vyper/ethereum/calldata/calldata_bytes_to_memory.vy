@external
def f(data: Bytes[100]) -> bytes32:
    data_: Bytes[100] = data
    return keccak256(data_)
# ----
# f(bytes): 0x20, 0x08, "abcdefgh" -> 0x48624fa43c68d5c552855a4e2919e74645f683f5384f72b5b051b71ea41d4f2d

@external
def bytesToBytes(input: bytes2) -> bytes4:
    return convert(input, bytes4)

# ----
# bytesToBytes(bytes2): "ab" -> "ab"

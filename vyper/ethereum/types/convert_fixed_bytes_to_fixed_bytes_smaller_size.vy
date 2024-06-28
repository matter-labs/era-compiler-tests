@external
def bytesToBytes(input: bytes4) -> bytes2:
    return convert(input, bytes2)

# ----
# bytesToBytes(bytes4): "abcd" -> FAILURE

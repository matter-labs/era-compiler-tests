@external
def bytesToBytes(input: bytes4) -> bytes2:
    return convert(input, bytes2)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# bytesToBytes(bytes4): "abcd" -> FAILURE

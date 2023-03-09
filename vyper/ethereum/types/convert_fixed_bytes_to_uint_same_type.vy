@external
def bytesToUint(s: bytes32) -> uint256:
    return convert(s, uint256)
  
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# bytesToUint(bytes32): "abc2" -> left(0x61626332)

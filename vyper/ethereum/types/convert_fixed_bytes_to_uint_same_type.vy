@external
def bytesToUint(s: bytes32) -> uint256:
    return convert(s, uint256)
  
# ----
# bytesToUint(bytes32): "abc2" -> left(0x61626332)

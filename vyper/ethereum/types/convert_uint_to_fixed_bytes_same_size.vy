@external
def uintToBytes(h: uint256) -> bytes32:
    return convert(h, bytes32)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# uintToBytes(uint256): left(0x616263) -> left(0x616263)

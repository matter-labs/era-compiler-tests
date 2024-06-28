@external
@pure
def keccak1() -> bytes32:
    return keccak256("123")

@external
@pure
def keccak2() -> bytes32:
    a: Bytes[100] = b"123"
    return keccak256(a)
    
# ----
# keccak1() -> 0x64e604787cbf194841e7b68d7cd28786f6c9a0a3ab9f8b0a0e87cb4387ab0107
# keccak2() -> 0x64e604787cbf194841e7b68d7cd28786f6c9a0a3ab9f8b0a0e87cb4387ab0107

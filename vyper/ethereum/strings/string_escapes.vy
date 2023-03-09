@external
@pure
def f() -> bytes32:
    escapeCharacters: bytes32 = convert(b"\t\n\r\'\"\\", bytes32)
    return escapeCharacters
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x090a0d27225c0000000000000000000000000000000000000000000000000000

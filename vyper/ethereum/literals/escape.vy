@external
@pure
def f() -> (uint256, bytes1, bytes1):
    encoded: Bytes[100] = b"\\\\"
    return (len(encoded), convert(slice(encoded, 0, 1), bytes1), convert(slice(encoded, 1, 1), bytes1))

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 2, 0x5c00000000000000000000000000000000000000000000000000000000000000, 0x5c00000000000000000000000000000000000000000000000000000000000000

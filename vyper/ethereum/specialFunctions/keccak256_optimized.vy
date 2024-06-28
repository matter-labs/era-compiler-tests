# tests compile-time evaluation of keccak256 on literal strings
@external
@pure
def short() -> bool:
    a: bytes32 = keccak256("abcdefghijklmn")
    s: Bytes[100] = b"abcdefghijklmn"
    return a == keccak256(s)

sc: constant(bytes32) = keccak256("abcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmn")
@external
@pure
def long() -> (bool, bool):
    a: bytes32 = keccak256("abcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmn")
    s: Bytes[300] = b"abcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmnabcdefghijklmn"
    return (a == keccak256(s), sc == keccak256(s))

# ----
# short() -> true
# long() -> true, true

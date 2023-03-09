@external
def f() -> Bytes[700]:
    b: Bytes[100] = convert("", Bytes[100])
    return concat(b, concat(b, b), concat(convert("", Bytes[100]), b), concat(b, convert("", Bytes[100])))

@external
def g() -> Bytes[500]:
    return concat(convert("", Bytes[100]), convert("abc", Bytes[100]), convert("", Bytes[100]), convert("abc", Bytes[100]), convert("", Bytes[100]))

@external
def h() -> Bytes[500]:
    b: Bytes[100] = convert("", Bytes[100])
    return concat(b, convert("abc", Bytes[100]), b, convert("abc", Bytes[100]), b)
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 0
# g() -> 0x20, 6, "abcabc"
# h() -> 0x20, 6, "abcabc"

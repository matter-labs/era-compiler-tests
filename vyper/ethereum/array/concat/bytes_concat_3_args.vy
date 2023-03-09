@external
def f(a: Bytes[100], b: Bytes[100], c: Bytes[100]) -> Bytes[300]:
    return concat(a, b, c)
# ====
# compileViaYul: also
# ----
# f(bytes,bytes,bytes): 0x60, 0xa0, 0xe0, 32, "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef", 3, "abc" -> 0x20, 40, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdefabc"
# f(bytes,bytes,bytes): 0x60, 0xa0, 0xe0, 3, "abc", 2, "de", 3, "fgh" -> 0x20, 8, "abcdefgh"

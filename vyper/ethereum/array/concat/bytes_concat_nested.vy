@external
def f(a: Bytes[100], b: Bytes[100], c: Bytes[100]) -> Bytes[300]:
    return concat(concat(a, b), c)
# ----
# f(bytes,bytes,bytes): 0x60, 0xa0, 0xe0, 2, "ab", 2, "ab", 2, "ab" -> 0x20, 6, "ababab"

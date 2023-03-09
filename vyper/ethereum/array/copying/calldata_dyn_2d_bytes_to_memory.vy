@external
def f(c: DynArray[Bytes[2], 2]) -> DynArray[Bytes[2], 2]:
    return c
# ----
# f(bytes[]): 0x20, 2, 0x60, 0x60, 0x20, 2, "ab" -> 0x20, 2, 0x40, 0x80, 2, "ab", 2, "ab"

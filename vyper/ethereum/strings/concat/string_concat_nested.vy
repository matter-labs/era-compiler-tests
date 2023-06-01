@external
def f(a: String[100], b: String[100], c: String[100]) -> String[300]:
    return concat(concat(a, b), c)

# ----
# f(string,string,string): 0x60, 0xa0, 0xe0, 2, "ab", 2, "ab", 2, "ab" -> 0x20, 6, "ababab"

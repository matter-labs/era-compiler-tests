@external
def f() -> String[100]:
    b: String[5] = ""
    return concat(b, concat(b, b), concat("", b), concat(b, ""))

@external
def g() -> String[100]:
    return concat("", "abc", "", "abc", "")

@external
def h() -> String[100]:
    b: String[5] = ""
    return concat(b, "abc", b, "abc", b)

# ----
# f() -> 0x20, 0
# g() -> 0x20, 6, "abcabc"
# h() -> 0x20, 6, "abcabc"

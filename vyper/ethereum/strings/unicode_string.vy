@external
@pure
def f() -> String[100]:
    return "😃, 😭, and 😈"

@external
@pure
def g() -> String[100]:
    return "😃, 😭,\
 and 😈"

# ----
# f() -> 0x20, 0x14, "\xf0\x9f\x98\x83, \xf0\x9f\x98\xad, and \xf0\x9f\x98\x88"
# g() -> 0x20, 0x14, "\xf0\x9f\x98\x83, \xf0\x9f\x98\xad, and \xf0\x9f\x98\x88"

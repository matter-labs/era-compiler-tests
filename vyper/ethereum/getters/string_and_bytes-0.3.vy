a: public(String[100])
b: public(String[100])
c: public(Bytes[100])
d: public(String[100])

@external
def __init__():
    self.d = "abcd"
    self.a = "hello world"
    self.b = "\x41\x42\x43\x44"
    self.c = b"\xff\x07\x7f\xff"
    
# ----
# a() -> 0x20, 11, "hello world"
# b() -> 0x20, 4, "ABCD"
# c() -> 0x20, 4, -439061522557375173052089223601630338202760422010735733633791622124826263552
# d() -> 0x20, 4, "abcd"

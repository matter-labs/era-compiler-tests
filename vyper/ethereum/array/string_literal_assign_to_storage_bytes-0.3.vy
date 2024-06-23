s: public(Bytes[100])
s1: public(Bytes[100])
@external
def __init__():
    self.s = convert("abc", Bytes[100])
    self.s1 = convert("abcd", Bytes[100])
@external
def f():
    self.s = convert("abcd", Bytes[100])
    self.s1 = convert("abc" , Bytes[100])
@internal
def tuple() -> (Bytes[100], Bytes[100]):
    return (convert("abc", Bytes[100]), convert("abcd", Bytes[100]))
@external
def g():
    (self.s, self.s1) = self.tuple()
# ====
# compileViaYul: also
# ----
# s() -> 0x20, 3, "abc"
# s1() -> 0x20, 4, "abcd"
# f() ->
# s() -> 0x20, 4, "abcd"
# s1() -> 0x20, 3, "abc"
# g() ->
# s() -> 0x20, 3, "abc"
# s1() -> 0x20, 4, "abcd"

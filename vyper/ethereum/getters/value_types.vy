a: public(uint8)
b: public(uint16)
c: public(uint128)
d: public(uint256)
e: public(bytes1)
f: public(bytes20)
g: public(bytes32)
h: public(bool)
i: public(address)

@deploy
def __init__():
    self.a = 3
    self.b = 4
    self.c = 5
    self.d = 6
    self.e = 0x7f
    self.f = 0x6465616462656566313564656164000000000010
    self.g = 0x6465616462656566313564656164000000000000000000000000000000000010
    self.h = True
    self.i = convert(max_value(uint160) // 3, address)

# ----
# a() -> 3
# b() -> 4
# c() -> 5
# d() -> 6
# e() -> 0x7f00000000000000000000000000000000000000000000000000000000000000
# f() -> 0x6465616462656566313564656164000000000010000000000000000000000000
# g() -> 0x6465616462656566313564656164000000000000000000000000000000000010
# h() -> true
# i() -> 0x5555555555555555555555555555555555555555

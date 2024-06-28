struct T:
    a: uint256
    b: uint256
    s: String[100]

flags: bool[2][1]

@external
def r() -> bool[3]:
    return [True, False, True]

@external
def s() -> (uint256[2], uint256):
    return ([convert(123, uint256), 456], 789)

@external
def u() -> T[2]:
    return [T(a=23, b=42, s="any"), T(a=555, b=666, s="any")]

@external
def v() -> bool[2][1]:
    return self.flags

struct string:
    inner: String[100]

@external
def w1() -> string[1]:
    return [string(inner="any")]

@external
def w2() -> string[2]:
    return [string(inner="any"), string(inner="any")]

@external
def w3() -> string[3]:
    return [string(inner="any"), string(inner="any"), string(inner="any")]

@external
def x() -> (string[2], string[3]):
    return ([string(inner="any"), string(inner="any")], [string(inner="any"), string(inner="any"), string(inner="any")])

# ----
# r() -> true, false, true
# s() -> 123, 456, 789
# u() -> 0x20, 0x40, 0xE0, 23, 42, 0x60, 3, "any", 555, 666, 0x60, 3, "any"
# v() -> false, false
# w1() -> 0x20, 0x20, 0x20, 3, "any"
# w2() -> 0x20, 0x40, 0xa0, 0x20, 3, "any", 0x20, 3, "any"
# w3() -> 0x20, 0x60, 0xc0, 0x120, 0x20, 3, "any", 0x20, 3, "any", 0x20, 3, "any"
# x() -> 0x40, 0x140, 0x40, 0xa0, 0x20, 3, "any", 0x20, 3, "any", 0x60, 0xc0, 0x120, 0x20, 3, "any", 0x20, 3, "any", 0x20, 3, "any"

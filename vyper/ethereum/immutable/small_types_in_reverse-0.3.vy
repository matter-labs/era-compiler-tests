a: immutable(uint16)
b: immutable(uint16)
c: immutable(uint16)

x: public(uint16[3])

@external
def __init__():
    c = convert(0xffff, uint16)
    b = convert(0x0f0f, uint16)
    a = convert(0x1234, uint16)
    self.x = [a, b, c]

@external
def a() -> uint16:
    return a

@external
def b() -> uint16:
    return b

@external
def c() -> uint16:
    return c

# ----
# a() -> 4660
# b() -> 0x0f0f
# c() -> 0xffff
# x(uint256): 0 -> 4660
# x(uint256): 1 -> 0x0f0f
# x(uint256): 2 -> 0xffff

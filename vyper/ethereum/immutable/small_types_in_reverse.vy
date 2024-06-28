a: immutable(uint16)
b: immutable(uint16)
c: immutable(uint16)

x: public(uint16[3])

@deploy
def __init__():
    c = convert(0xffff, uint16)
    b = convert(0x0f0f, uint16)
    a = convert(0x1234, uint16)
    self.x = [a, b, c]

@external
def get_a() -> uint16:
    return a

@external
def get_b() -> uint16:
    return b

@external
def get_c() -> uint16:
    return c

# ----
# get_a() -> 4660
# get_b() -> 0x0f0f
# get_c() -> 0xffff
# x(uint256): 0 -> 4660
# x(uint256): 1 -> 0x0f0f
# x(uint256): 2 -> 0xffff

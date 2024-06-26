a: immutable(uint256)
b: immutable(uint256)
c: immutable(uint256)
d: immutable(uint256)

@external
def __init__():
    a = 1
    b = a
    c = b
    d = c

@external
def a() -> uint256:
    return a

@external
def b() -> uint256:
    return b

@external
def c() -> uint256:
    return c

@external
def d() -> uint256:
    return d

# ====
# compileViaYul: also
# ----
# a() -> 1
# b() -> 1
# c() -> 1
# d() -> 1

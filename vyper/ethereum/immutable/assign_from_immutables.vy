a: immutable(uint256)
b: immutable(uint256)
c: immutable(uint256)
d: immutable(uint256)

@deploy
def __init__():
    a = 1
    b = a
    c = b
    d = c

@external
def get_a() -> uint256:
    return a

@external
def get_b() -> uint256:
    return b

@external
def get_c() -> uint256:
    return c

@external
def get_d() -> uint256:
    return d

# ====
# compileViaYul: also
# ----
# get_a() -> 1
# get_b() -> 1
# get_c() -> 1
# get_d() -> 1

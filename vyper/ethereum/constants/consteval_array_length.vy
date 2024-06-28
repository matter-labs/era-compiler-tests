a: constant(uint256) = 12
b: constant(uint256) = 10

@external
@pure
def f() -> (uint256, uint256):
    x: uint256[(a // b) * b] = empty(uint256[(a // b) * b])
    return ((a // b) * b, (a // b) * b)

# ----
# constructor() ->
# f() -> 0x0a, 0x0a

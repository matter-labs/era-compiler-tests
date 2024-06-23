a: constant(int128) = 7
b: constant(int128) = 3
c: constant(int128) = a // b
d: constant(int128) = (-a) // b

@external
@pure
def f() -> (uint256, int128, uint256, int128):
    x: uint256[c] = empty(uint256[c])
    y: uint256[-d] = empty(uint256[-d])
    return (convert(c, uint256), c, convert(-d, uint256), -d)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 2, 2, 2, 2

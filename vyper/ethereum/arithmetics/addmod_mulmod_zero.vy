@external
@pure
def f(d: uint256) -> uint256:
    t: uint256 = uint256_addmod(1, 2, d)
    return 2

@external
@pure
def g(d: uint256) -> uint256:
    t: uint256 = uint256_addmod(1, 2, d)
    return 2

@external
@pure
def h() -> uint256:
    t: uint256 = uint256_addmod(0, 1, 2)
    t = uint256_addmod(1, 0, 2)
    t = uint256_addmod(0, 1, 2)
    t = uint256_addmod(1, 0, 2)
    return 2

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256): 0 -> FAILURE
# g(uint256): 0 -> FAILURE
# h() -> 2

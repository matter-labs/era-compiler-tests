struct s:
    a: uint256
    b: uint256

@external
def f() -> uint256:
    _: s[7][1] = empty(s[7][1]) # This is only the type, should not have any effect
    return 3

# ----
# f() -> 3

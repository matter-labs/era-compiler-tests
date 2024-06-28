# This caused a failure since the type was not converted to its mobile type.
@external
def f() -> uint256:
    return [4][0]
# ----
# f() -> 4

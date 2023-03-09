# ecrecover should return zero for malformed input
# (v should be 27 or 28, not 1)
# Note that the precompile does not return zero but returns nothing.
@external
def f() -> address:
    return ecrecover(convert(MAX_UINT256, bytes32), 1, 2, 3)

# ====
# compileViaYul: also
# ----
# f() -> 0

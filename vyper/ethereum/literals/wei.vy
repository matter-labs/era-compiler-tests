x: constant(uint256) = as_wei_value(1, "wei")

@external
@view
def f() -> uint256:
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1

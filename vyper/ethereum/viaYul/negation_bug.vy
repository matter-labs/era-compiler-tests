@external
@pure
def f():
    _: int8 = -0
    # Used to incorrectly use the checked unary negation function and revert.
    __: int16 = (-(-128))
    
# ----
# f() ->

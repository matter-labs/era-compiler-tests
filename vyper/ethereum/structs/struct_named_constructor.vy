struct S:
    a: uint256
    x: bool

s: public(S)

@external
def __init__():
    self.s = S(x=True, a=1)

# ----
# s() -> 1, true

a: public(uint256)

@external
def __init__():
    self.a = shift(convert(0x4200, uint256), -8)

# ----
# a() -> 0x42

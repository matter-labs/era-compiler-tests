a: public(uint256)

@deploy
def __init__():
    self.a = convert(0x4200, uint256) >> 8

# ----
# a() -> 0x42

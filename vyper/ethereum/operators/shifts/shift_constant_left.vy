a: public(uint256)

@deploy
def __init__():
    self.a = convert(0x42, uint256) << 8

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# a() -> 0x4200

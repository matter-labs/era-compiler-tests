a: public(uint256)

@external
def __init__():
    self.a = shift(convert(0x42, uint256), 8)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# a() -> 0x4200

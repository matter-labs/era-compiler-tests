x: public(uint256)
# Signature is d88e0b00
@external
def fow():
    self.x = 3
@external
def __default__():
    self.x = 2
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# (): hex"d88e0b"
# x() -> 2
# (): hex"d88e0b00"
# x() -> 3
# (): hex"d88e"
# x() -> 2
# (): hex"d88e0b00"
# x() -> 3
# (): hex"d8"
# x() -> 2

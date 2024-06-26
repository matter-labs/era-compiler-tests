b: public(Bytes[10])

@deploy
def __init__():
    self.b = b"abc"
    
# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# b() -> 0x20, 0x03, 0x6162630000000000000000000000000000000000000000000000000000000000

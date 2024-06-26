name: bytes32

@internal
def setName(_name: bytes32):
    self.name = _name

@deploy
def __init__():
    self.setName(convert(convert("abc", Bytes[32]), bytes32))

@external
def getName() -> bytes32:
    return self.name

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# getName() -> "abc"

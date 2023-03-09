name: bytes32
flag: bool

@internal
def setName(_name: bytes32):
    self.name = _name

@external
def __init__():
    self.setName(extract32(convert("abc", Bytes[32]), 0))

@external
def getName() -> bytes32:
    return self.name

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# getName() -> "abc"

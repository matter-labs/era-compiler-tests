stateBool: public(bool)
stateDecimal: public(uint256)
stateBytes: public(bytes32)

@deploy
def __init__():
    self.stateBool = True
    self.stateDecimal = 42
    self.stateBytes = 0x4200ef0000000000000000000000000000000000000000000000000000000000
    
@external
def update(_bool: bool, _decimal: uint256, _bytes: bytes32) -> (bool, uint256, bytes32):
    self.stateBool = _bool
    self.stateDecimal = _decimal
    self.stateBytes = _bytes
    return (self.stateBool, self.stateDecimal, self.stateBytes)

# ====
# compileViaYul: also
# ----
# stateBool() -> true
# stateBool() -> right(true)
# stateDecimal() -> 42
# stateDecimal() -> right(42)
# stateBytes() -> left(0x4200ef)
# update(bool,uint256,bytes32): false, -23, left(0x2300ef) -> false, -23, left(0x2300ef)

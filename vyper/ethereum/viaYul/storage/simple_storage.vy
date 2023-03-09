x: uint256
y: uint256

@external
def setX(a: uint256) -> uint256:
    self.x = a
    return self.x

@external
def setY(a: uint256) -> uint256:
    self.y = a
    return self.y

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# setX(uint256): 6 -> 6
# setY(uint256): 2 -> 2

a: immutable(uint8)
x: uint8

@deploy
def __init__():
    a = 3
    self.x = a

@external
@view
def readX() -> uint8:
    return self.x
    
# ====
# compileViaYul: also
# ----
# readX() -> 3

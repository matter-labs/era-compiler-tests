a: immutable(uint8)
x: uint8

@external
def __init__():
    a = 3
    self.x = a

@external
@view
def readX() -> uint8:
    return self.x
    
# ----
# readX() -> 3

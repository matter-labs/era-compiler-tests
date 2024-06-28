a: immutable(uint8)
x: uint8

@internal
@view
def _readA() -> uint8:
    return a
    
@external
def __init__():
    a = 3
    self.x = self._readA()

@external
@view
def readX() -> uint8:
    return self.x

@external
@view
def readA() -> uint8:
    return a
    
# ----
# readX() -> 3
# readA() -> 3

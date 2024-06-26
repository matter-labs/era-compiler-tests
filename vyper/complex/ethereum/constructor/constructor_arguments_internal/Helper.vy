name: bytes3
_flag: bool

@external
def init_(x: bytes3, f: bool):
    self.name = x
    self._flag = f

@view
def getName() -> bytes3:
    return self.name

@view
def getFlag() -> bool:
    return self._flag

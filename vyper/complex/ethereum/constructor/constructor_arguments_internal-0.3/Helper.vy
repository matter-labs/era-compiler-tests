name: bytes3
_flag: bool

@external
def init_(x: bytes3, f: bool):
    self.name = x
    self._flag = f

@external
def getName() -> bytes3:
    return self.name

@external
def getFlag() -> bool:
    return self._flag

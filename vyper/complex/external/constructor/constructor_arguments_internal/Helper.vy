name: bytes3
flag: bool

@external
def init_(x: bytes3, f: bool):
    self.name = x
    self.flag = f

@external
def getName() -> bytes3:
    return self.name

@external
def getFlag() -> bool:
    return self.flag

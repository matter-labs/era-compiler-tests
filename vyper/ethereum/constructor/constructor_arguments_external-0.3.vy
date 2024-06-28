name: bytes32
flag: bool

@external
def __init__(x: bytes32, f: bool):
    self.name = x
    self.flag = f

@external
def getName() -> bytes32:
    return self.name

@external
def getFlag() -> bool:
    return self.flag

# ----
# constructor(): "abc", true
# gas irOptimized: 112563
# gas legacy: 145838
# gas legacyOptimized: 104017
# getFlag() -> true
# getName() -> "abc"

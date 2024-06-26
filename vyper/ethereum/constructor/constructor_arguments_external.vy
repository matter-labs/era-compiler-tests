name: bytes32
_flag: bool

@deploy
def __init__(x: bytes32, f: bool):
    self.name = x
    self._flag = f

@external
def getName() -> bytes32:
    return self.name

@external
def getFlag() -> bool:
    return self._flag

# ====
# compileViaYul: also
# ----
# constructor(): "abc", true
# gas irOptimized: 112563
# gas legacy: 145838
# gas legacyOptimized: 104017
# getFlag() -> true
# getName() -> "abc"

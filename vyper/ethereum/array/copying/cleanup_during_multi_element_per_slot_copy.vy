s: DynArray[uint32, 10]

@deploy
def __init__():
    self.s.append(0)
    self.s.append(0)

@internal
def tuple() -> (uint32, DynArray[uint32, 10]):
    return (4, [0])

@external
def f() -> uint256:
    (self.s[1], self.s) = self.tuple()
    self.s = [0]
    self.s.append(0)
    return convert(self.s[1], uint256)
    # used to return 4 via IR.
    
# ----
# constructor()
# gas irOptimized: 237351
# gas legacy: 221315
# gas legacyOptimized: 185247
# f() -> 0

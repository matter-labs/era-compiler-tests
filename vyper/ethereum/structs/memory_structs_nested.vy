struct S:
    x: uint8
    y: uint16
    z: uint256

struct X:
    x: uint8
    s: S

@internal
def extract(s: X, which: uint256) -> uint256:
    if which == 0:
        return convert(s.x, uint256)
    elif which == 1:
        return convert(s.s.x, uint256)
    elif which == 2:
        return convert(s.s.y, uint256)
    else:
        return s.s.z

@internal
def combine(a: uint8, x: uint8, y: uint16, z: uint256) -> X:
    s: X = empty(X)
    s.x = a
    s.s.x = x
    s.s.y = y
    s.s.z = z
    return s
    
@external
def test() -> (uint256, uint256, uint256, uint256):
    d: X = self.combine(1, 2, 3, 4)
    return self.extract(d, 0), self.extract(d, 1), self.extract(d, 2), self.extract(d, 3)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> 1, 2, 3, 4

struct S:
    x: uint8
    y: uint16
    z: uint256

@internal
def extract(s: S, which: uint256) -> uint256:
    if which == 0:
        return convert(s.x, uint256)
    elif which == 1:
        return convert(s.y, uint256)
    else:
        return s.z

@internal
def combine(x: uint8, y: uint16, z: uint256) -> S:
    s: S = empty(S)
    s.x = x
    s.y = y
    s.z = z
    return s
    
@external
def test() -> (uint256, uint256, uint256):
    data: S = self.combine(1, 2, 3)
    return self.extract(data, 0), self.extract(data, 1), self.extract(data, 2)

# ----
# test() -> 1, 2, 3

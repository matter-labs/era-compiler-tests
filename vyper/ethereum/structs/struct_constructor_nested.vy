struct X:
    x1: uint256
    x2: uint256
    
struct S:
    s1: uint256
    s2: uint256[3]
    s3: X
    
s: S

@deploy
def __init__():
    s2: uint256[3] = empty(uint256[3])
    s2[1] = 9
    self.s = S(s1=1, s2=s2, s3=X(x1=4, x2=5))

@external
def get() -> (uint256, uint256[3], uint256, uint256):
    return self.s.s1, self.s.s2, self.s.s3.x1, self.s.s3.x2

# ====
# compileViaYul: also
# ----
# get() -> 0x01, 0x00, 0x09, 0x00, 0x04, 0x05

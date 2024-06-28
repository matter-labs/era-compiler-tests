y: public(int16[2])
z: int16

@deploy
def __init__():
    self.y = [-5, -6]
    
@external
def g() -> int16[2]:
    t: int8[2] = [-3, -4]
    self.y[0] = convert(t[0], int16)
    self.y[1] = convert(t[1], int16)
    return self.y

@external
def h(t: int8) -> int16:
    self.z = convert(t, int16)
    return self.z
    
# ----
# y(uint256): 0 -> -5
# y(uint256): 1 -> -6
# g() -> -3, -4
# h(int8): -10 -> -10

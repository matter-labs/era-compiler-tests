struct Data:
    a: uint256
    b: uint8
    d: bool

data: public(HashMap[uint256, Data])

@deploy
def __init__():
    self.data[7].a = 1
    self.data[7].b = 2
    self.data[7].d = True

# ----
# data(uint256): 7 -> 1, 2, true

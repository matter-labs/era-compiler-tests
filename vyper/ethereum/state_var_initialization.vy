i: public(uint256)
k: public(uint256)

@deploy
def __init__():
    self.i = 1
    self.k = 2
    self.i = self.i + self.i
    self.k = self.k - self.i

# ----
# i() -> 2
# k() -> 0

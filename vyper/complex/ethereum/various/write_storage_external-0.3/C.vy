import C as C

x: public(uint256)

@external
@payable
def f(y: uint256):
    self.x = y

@external
def g(y: uint256):
    self.x = y

@external
def h():
    C(self).g(12)

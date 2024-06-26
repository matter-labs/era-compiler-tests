interface Self:
    def g(y: uint256): nonpayable

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
    extcall Self(self).g(12)

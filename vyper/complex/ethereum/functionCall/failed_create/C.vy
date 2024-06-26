interface D:
    def init_(): payable

interface Self:
    def stack(depth: uint256, _d: address) -> address: payable

x: public(uint256)

@deploy
@payable
def __init__():
    pass

@internal
def _f(amount: uint256, _d: address) -> address:
    self.x += 1
    d: address = create_forwarder_to(_d)
    extcall D(d).init_(value=amount)
    return d

@external
def f(amount: uint256, _d: address) -> address:
    return self._f(amount, _d)

@external
@payable
def stack(depth: uint256, _d: address) -> address:
    if depth > 0:
        return extcall Self(self).stack(depth - 1, _d)
    else:
        return self._f(0, _d)

import Helper as Helper

map: HashMap[uint256, uint256]

@internal
def g(a: uint256) -> uint256:
    return self.map[a]

@external
def f(x: uint256, _helper: address) -> uint256:
    self.map[x] = x
    helper: address = create_forwarder_to(_helper)
    Helper(helper).init_(convert(keccak256(abi_decode(self.g(self.map[x]))), uint256))
    return Helper(helper).flag()

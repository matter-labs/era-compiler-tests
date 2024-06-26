import A as A
test: public(uint256)

@external
def __init__():
    self.test = 1

@external
def testIt(_a: address):
    a: address = create_forwarder_to(_a)
    A(a).init_()
    self.test += 1
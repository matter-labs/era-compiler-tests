interface A:
    def init_(): nonpayable

test: public(uint256)

@deploy
def __init__():
    self.test = 1

@external
def testIt(_a: address):
    a: address = create_forwarder_to(_a)
    extcall A(a).init_()
    self.test += 1
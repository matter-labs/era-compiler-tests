interface C1:
    def bla() -> address: nonpayable
    def init_(x: address): nonpayable

bla: public(C1)

@external
def init_(x: address):
    self.bla = C1(x)

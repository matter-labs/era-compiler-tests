interface A:
    def g(): nonpayable

a: A

@deploy
def __init__(_a: address):
    self.a = A(create_forwarder_to(_a))

@external
def f():
    extcall self.a.g()

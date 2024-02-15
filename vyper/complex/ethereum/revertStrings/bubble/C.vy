import A as A

a: A

@external
def __init__(_a: address):
    self.a = A(create_forwarder_to(_a))

@external
def f():
    self.a.g()

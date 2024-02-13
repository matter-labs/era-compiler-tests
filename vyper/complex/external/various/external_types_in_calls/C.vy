import C1 as C1

@internal
def t1(a: address) -> address:
    return a

@external
def test(_c1: address) -> (address, address):
    c: address = create_forwarder_to(_c1)
    C1(_c1).init_(convert(9, address))
    x: address = C1(c).bla()
    y: address = self.t1(convert(7, address))
    return x, y

@external
def t2() -> address:
    return convert(9, address)

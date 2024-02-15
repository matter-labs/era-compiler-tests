import A as A

@external
def f(_a: address) -> (uint16[5], uint16[5]):
    a: address = create_forwarder_to(_a)
    res: uint16[5] = A(a).f(2)
    res2: uint16[5] = A(a).f(1000)
    return res, res2

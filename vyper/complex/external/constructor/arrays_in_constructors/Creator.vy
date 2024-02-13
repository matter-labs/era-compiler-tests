# Without inheritance
import Main as Main

@external
def f(x: uint256, s: DynArray[address, 10], _main: address) -> (uint256, address):
    c: address = create_forwarder_to(_main)
    Main(c).init_(s, x)
    r: uint256 = Main(c).m_x()
    ch: address = Main(c).part(x)
    return r, ch

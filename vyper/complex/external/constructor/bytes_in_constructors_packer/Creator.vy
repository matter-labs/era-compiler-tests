# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems
# Without inheritance
import Main as Main

@external
def f(x: uint256, s: Bytes[100], _main: address) -> (uint256, bytes1):
    c: address = create_forwarder_to(_main)
    Main(c).init_(s, x)
    r: uint256 = Main(c).m_x()
    ch: bytes1 = Main(c).part(x)
    return r, ch

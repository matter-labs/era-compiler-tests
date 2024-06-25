import C as C

interface CView:
    def f() -> uint256: view

interface CPure:
    def f() -> uint256: pure

@external
def f(_c: address) -> uint256:
    return C(create_forwarder_to(_c)).f()

@external
def fview(_c: address) -> uint256:
    return staticcall (CView(create_forwarder_to(_c))).f()

@external
def fpure(_c: address) -> uint256:
    return (staticcall CPure(create_forwarder_to(_c))).f()

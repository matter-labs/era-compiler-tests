# Report https://linear.app/matterlabs/issue/CPR-413/fix-another-exception-handling-issue

interface CView:
    def f() -> uint256: view

@external
def fview(c: address) -> uint256:
    return CView(c).f()

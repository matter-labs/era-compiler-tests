interface C:
    def h(n: uint256[4]) -> uint256: pure
    def i(n: uint256[4]) -> uint256: view

@external
@pure
def h(n: uint256[4]) -> uint256:
    return n[0] + n[1] + n[2] + n[3]

@external
@view
def i(n: uint256[4]) -> uint256:
    return staticcall C(self).h(n) * 2

# ====
# compileViaYul: also
# ----
# h(uint256[4]): 1, 2, 3, 4 -> 10
# i(uint256[4]): 1, 2, 3, 4 -> 20

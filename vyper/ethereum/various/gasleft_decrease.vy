v: uint256

@external
def f() -> bool:
    startGas: uint256 = msg.gas
    self.v += 1
    assert startGas > msg.gas
    return True
    
@external
def g() -> bool:
    startGas: uint256 = msg.gas
    assert startGas > msg.gas
    return True

# ----
# f() -> true
# g() -> true

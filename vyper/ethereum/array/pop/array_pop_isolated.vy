# This tests that the compiler knows the correct size of the function on the stack.
data: DynArray[uint256, 10]

@external
def test() -> uint256:
    x: uint256 = 2
    self.data.pop
    x = 3
    
# ====
# compileToEwasm: also
# ----
# test() -> 3

data: DynArray[int256, 10]

@external
def f() -> uint256:
    self.data.append(1)
    (self.data.pop)()
    return len(self.data)
    
# ----
# f() -> 0

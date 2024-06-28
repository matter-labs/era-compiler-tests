data: Bytes[100]

@external
def f() -> uint256:
    self.data = b"ab"
    self.data = empty(Bytes[100])
    return len(self.data)

# ----
# f() -> 0
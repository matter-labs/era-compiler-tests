data: HashMap[String[100], uint256]

@external
def f() -> uint256:
    self.data["abc"] = 2
    return self.data["abc"]

# ----
# f() -> 2

data: Bytes[100]

@external
def foo() -> bool:
    self.data = convert("foo", Bytes[100])
    return keccak256(self.data) == keccak256("foo")

# ====
# compileViaYul: also
# ----
# foo() -> true

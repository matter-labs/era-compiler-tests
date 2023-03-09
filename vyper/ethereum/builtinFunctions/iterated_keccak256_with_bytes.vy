data: Bytes[100]

@external
def foo() -> bytes32:
    self.data = convert("xyz", Bytes[100])
    return keccak256(concat(convert("b", Bytes[1]), keccak256(self.data), convert("a", Bytes[1])))
# ====
# compileViaYul: also
# ----
# foo() -> 0xb338eefce206f9f57b83aa738deecd5326dc4b72dd81ee6a7c621a6facb7acdc

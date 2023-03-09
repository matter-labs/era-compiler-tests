@internal
def foo() -> uint256:
    return 42

@external
def associated() -> uint256:
    # This expression directly references function definition
    return (self.foo)()
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# associated() -> 42

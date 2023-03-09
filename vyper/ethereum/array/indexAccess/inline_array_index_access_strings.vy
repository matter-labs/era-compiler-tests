tester: public(String[100])

@internal
def f() -> String[100]:
    return (["abc", "def", "g"][0])
    
@external
def test():
    self.tester = self.f()

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# test() ->
# tester() -> 0x20, 0x3, "abc"

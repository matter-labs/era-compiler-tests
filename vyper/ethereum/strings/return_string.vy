s: public(String[100])

@external
def set(_s: String[100]):
    self.s = _s
    
@external
def get1() -> String[100]:
    return self.s
    
@external
def get2() -> String[100]:
    r: String[100] = self.s
    return r

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# set(string): 0x20, 5, "Julia" ->
# get1() -> 0x20, 5, "Julia"
# get2() -> 0x20, 5, "Julia"
# s() -> 0x20, 5, "Julia"

data: public(uint256)

@external
def __init__():
    self.data = 8
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# data() -> 8

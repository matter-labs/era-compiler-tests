# this test just checks that the copy loop does not mess up the stack
@external
def save() -> uint256:
    r: uint256 = 23
    self.savedData = slice(msg.data, 0, 4)
    r = 24
    return r
    
savedData: Bytes[100]

# ====
# compileViaYul: also
# ----
# save() -> 24 # empty copy loop #
# save(): "abcdefg" -> 24

struct S:
    a: uint256
event E:
    _: S
s: S
@external
def createEvent(x: uint256):
    self.s.a = x
    log E(self.s)
# ====
# compileViaYul: also
# ----
# createEvent(uint256): 42 ->
# ~ emit E((uint256)): 0x2a

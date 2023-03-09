struct S:
    a: uint256
event E:
    _: S
@external
def createEvent(x: uint256):
    log E(S({a: x}))
# ====
# compileViaYul: also
# ----
# createEvent(uint256): 42 ->
# ~ emit E((uint256)): 0x2a

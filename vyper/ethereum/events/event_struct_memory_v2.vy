struct S:
    a: uint256

event E:
    s: S

@external
def createEvent(x: uint256):
    log E(s=S(a=x))

# ----
# createEvent(uint256): 42 ->
# ~ emit E((uint256)): 0x2a

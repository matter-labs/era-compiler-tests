struct Item:
    x: uint256

event Ev:
    i: Item

@internal
def o():
    log Ev(Item(x=1))
    
@external
def f():
    self.o()

# ====
# compileViaYul: also
# ----
# f() ->
# ~ emit Ev((uint256)): 0x01

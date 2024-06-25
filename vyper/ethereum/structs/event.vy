struct Item:
    x: uint256

event Ev:
    _: Item

@internal
def o():
    log Ev(_=Item(x=1))
    
@external
def f():
    self.o()

# ====
# compileViaYul: also
# ----
# f() ->
# ~ emit Ev((uint256)): 0x01

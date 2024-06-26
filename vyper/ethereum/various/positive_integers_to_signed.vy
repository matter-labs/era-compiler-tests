x: public(int8)
y: public(int8)
q: public(int16)

@deploy
def __init__():
    self.x = 2
    self.y = 127
    self.q = 250
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# x() -> 2
# y() -> 127
# q() -> 250

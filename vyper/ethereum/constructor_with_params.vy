i: public(uint256)
k: public(uint256)

@deploy
def __init__(newI: uint256, newK: uint256):
    self.i = newI
    self.k = newK

# ====
# compileViaYul: also
# ----
# constructor(): 2, 0 ->
# gas irOptimized: 104227
# gas legacy: 117158
# i() -> 2
# k() -> 0

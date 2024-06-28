r: public(uint256)
ch: public(address)

@external
def __init__(s: address[3], x: uint256):
    self.r = x
    self.ch = s[2]
# ----
# constructor(): 1, 2, 3, 4 ->
# gas irOptimized: 132278
# gas legacy: 176789
# gas legacyOptimized: 129585
# r() -> 4
# ch() -> 3

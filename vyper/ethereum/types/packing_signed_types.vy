@external
def run() -> int8:
    x: bytes1 = 0xfa
    return convert(x, int8)

# ----
# run() -> 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa

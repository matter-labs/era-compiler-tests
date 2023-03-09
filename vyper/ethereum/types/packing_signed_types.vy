@external
def run() -> int8:
    x: bytes1 = 0xfa
    return convert(x, int8)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# run() -> 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa

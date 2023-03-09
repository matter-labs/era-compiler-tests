struct S:
    c: address
    x: uint256[4]

@external
def f(a: uint256, s1: S[2], b: uint256) -> (uint256, address, uint256):
    return (a, s1[0].c, b)

# ====
# compileViaYul: also
# ----
# f(uint256,(address,uint256[4])[2],uint256): 7, 0x0, 0x11, 0x12, 0, 0, 0x99, 0x31, 0x32, 0x34, 0x35, 8 -> 7, 0x0, 8

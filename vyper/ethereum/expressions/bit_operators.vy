x: uint8
v: uint256
@external
def f() -> (uint256, uint256, uint256):
    a: uint16 = convert(0x0f0f, uint16)
    b: uint32 = convert(0x0fff0fff, uint32)
    return (
        bitwise_and(convert(a, uint256), convert(b, uint256)),
        bitwise_or(convert(a, uint256), convert(b, uint256)),
        bitwise_xor(convert(a, uint256), convert(b, uint256)),
    )
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 3855, 268374015, 268370160

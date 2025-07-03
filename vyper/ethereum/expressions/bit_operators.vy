x: uint8
v: uint256
@external
def f() -> (uint256, uint256, uint256):
    a: uint16 = convert(0x0f0f, uint16)
    b: uint32 = convert(0x0fff0fff, uint32)
    return (
        convert(a, uint256) & convert(b, uint256),
        convert(a, uint256) | convert(b, uint256),
        convert(a, uint256) ^ convert(b, uint256),
    )
    
# ----
# f() -> 3855, 268374015, 268370160

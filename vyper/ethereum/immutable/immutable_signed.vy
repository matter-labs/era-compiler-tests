a: immutable(int8)
b: immutable(bytes2)

@deploy
def __init__():
    a = -2
    b = convert(b"ab", bytes2)
    
@external
@view
def viaasm() -> (bytes32, bytes32):
    _a: int8 = a
    _b: bytes2 = b
    return convert(a, bytes32), convert(b, bytes32)
    
# ====
# compileViaYul: also
# ----
# viaasm() -> 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x6162000000000000000000000000000000000000000000000000000000000000

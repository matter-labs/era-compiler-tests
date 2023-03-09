a: constant(Bytes[100]) = b"\x03\x01\x02"
c: constant(String[100]) = "hello"
x: constant(uint256) = 56
st: constant(bytes32) = 0x61626300ff5f5f00000000000000000000000000000000000000000000000000

@external
def f() -> Bytes[100]:
    return a
    
@external
def h() -> Bytes[100]:
    return convert(c, Bytes[100])
    
@external
def i() -> (uint256, uint8, bytes32):
    return (x, 1, st)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 3, "\x03\x01\x02"
# h() -> 0x20, 5, "hello"
# i() -> 0x38, 1, 0x61626300ff5f5f00000000000000000000000000000000000000000000000000

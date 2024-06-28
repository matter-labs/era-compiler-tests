@external
@pure
def e(b: Bytes[100]) -> Bytes[100]:
    return b

@external
@pure
def f() -> (String[100], String[100]):
    return ("any", "any")
    
@external
@pure
def g() -> (String[100], uint256, String[100]):
    return ("any", 42, "any")
    
@external
@pure
def h() -> String[100]:
    return "any"
    
# ----
# e(bytes): 32, 3, hex"AB33BB" -> 32, 3, left(0xAB33BB)
# e(bytes): 32, 32, 0x20 -> 32, 32, 0x20
# e(bytes): 32, 3, hex"AB33FF" -> 32, 3, hex"ab33ff0000000000000000000000000000000000000000000000000000000000"
# f() -> 0x40, 0x80, 3, "any", 3, "any"
# g() -> 0x60, 0x2a, 0xa0, 3, "any", 3, "any"
# h() -> 0x20, 3, "any"

struct S:
    a: uint256
    b: uint256
    
struct T:
    a: uint256
    b: uint256
    s: String[100]
    
@external
def s() -> S:
    return S({a: 23, b: 42})
    
@external
def t() -> T:
    return T({a: 23, b: 42, s: "any"})
    
# ----
# s() -> 23, 42
# t() -> 0x20, 23, 42, 0x60, 3, "any"

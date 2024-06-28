@external
def f() -> (String[100], uint256):
    return ("abc", 8)
   
@internal
def h_() -> (String[100]):
    return ("abc")
     
@external
def g() -> (String[100], String[100]):
    return (self.h_(), "def")
    
@external
def h() -> (String[100]):
    return ("abc")
  
# ----
# f() -> 0x40, 0x8, 0x3, "abc"
# g() -> 0x40, 0x80, 0x3, "abc", 0x3, "def"

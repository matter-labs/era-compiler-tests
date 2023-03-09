@external
@pure
def f() -> String[100]:
    return ""

@external
@pure
def g(_msg: String[100]) -> String[100]:
    return _msg

@external
@pure
def h(_msg: String[100], v: uint256) -> (String[100], uint256):
    return (_msg, v)

# Adjusting order of input/output intentionally.
@external
@pure
def i(msg1: String[100], v: uint256, msg2: String[100]) -> (String[100], String[100], uint256):
    return (msg1, msg2, v)
    
@external
@pure
def j(msg1: String[100], v: uint256) -> (String[100], String[100], uint256):
    return (msg1, "", v)

# ====
# compileViaYul: also
# ----
# f() -> 0x20, 0
# g(string): 0x20, 0, "" -> 0x20, 0
# g(string): 0x20, 0 -> 0x20, 0
# h(string,uint256): 0x40, 0x888, 0, "" -> 0x40, 0x0888, 0
# h(string,uint256): 0x40, 0x888, 0 -> 0x40, 0x0888, 0
# i(string,uint256,string): 0x60, 0x888, 0x60, 0, "" -> 0x60, 0x80, 0x0888, 0, 0
# i(string,uint256,string): 0x60, 0x888, 0x60, 0 -> 0x60, 0x80, 0x0888, 0, 0
# j(string,uint256): 0x40, 0x888, 0, "" -> 0x60, 0x80, 0x0888, 0, 0
# j(string,uint256): 0x40, 0x888, 0 -> 0x60, 0x80, 0x0888, 0, 0

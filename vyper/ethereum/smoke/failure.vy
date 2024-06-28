@external
@pure
def e():
    raise "Transaction failed."
    
@external
@pure
def f(_value: bool):
    message: String[100] = empty(String[100])
    assert _value, message

@external
@pure
def g(_value: bool):
    assert _value, "Value is false."

@external
@pure
def h() -> uint256:
    raise
    
# ----
# _() -> FAILURE
# e() -> FAILURE, hex"08c379a0", 0x20, 0x13, "Transaction failed."
# f(bool): false -> FAILURE, hex"08c379a0", 0x20, 0x00
# g(bool): false -> FAILURE, hex"08c379a0", 0x20, 0x0f, "Value is false."
# h() -> FAILURE

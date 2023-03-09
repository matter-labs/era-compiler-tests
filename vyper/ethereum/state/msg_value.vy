@external
@payable
def f() -> uint256:
    return msg.value
    
# ====
# compileToEwasm: also
# ----
# f() -> 0
# f(), 12 ether -> 12000000000000000000

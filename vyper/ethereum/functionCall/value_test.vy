@external
@payable
def f() -> uint256:
    return msg.value
    
# ----
# f(), 1 ether -> 1000000000000000000
# f(), 1 wei -> 1

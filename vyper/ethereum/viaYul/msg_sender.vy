@external
@view
def test() -> bool:
    x: address = empty(address)
    x = msg.sender
    return x == msg.sender
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> true

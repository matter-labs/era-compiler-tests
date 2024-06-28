@external
@view
def test() -> bool:
    x: address = empty(address)
    x = msg.sender
    return x == msg.sender
    
# ----
# test() -> true

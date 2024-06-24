owner: public(address)

@external
def pwn():
    self.owner = msg.sender
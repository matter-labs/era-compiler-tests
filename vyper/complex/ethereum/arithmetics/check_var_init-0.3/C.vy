x: public(uint256)

@external
@payable
def init_():
    self.x = msg.value - 10

state: public(uint256)

@deploy
@payable
def __init__(_state: uint256):
    self.state = _state

@external
@payable
def balance_() -> uint256:
    return self.balance
    
@external
def update(_state: uint256):
    self.state = _state

# ----
# constructor(), 2 wei: 3 ->
# gas irOptimized: 107003
# gas legacy: 151416
# gas legacyOptimized: 108388
# state() -> 3
# balance_() -> 2
# balance -> 2
# update(uint256): 4
# state() -> 4

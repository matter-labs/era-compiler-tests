ticketPrice: public(uint256)

@external
def __init__():
    self.ticketPrice = 500

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# ticketPrice() -> 500

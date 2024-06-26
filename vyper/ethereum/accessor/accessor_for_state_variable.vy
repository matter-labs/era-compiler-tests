ticketPrice: public(uint256)

@deploy
def __init__():
    self.ticketPrice = 500

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# ticketPrice() -> 500

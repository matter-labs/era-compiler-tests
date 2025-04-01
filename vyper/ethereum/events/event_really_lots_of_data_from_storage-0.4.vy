x: Bytes[100]
event Deposit:
    fixeda: uint256
    dynx: Bytes[100]
    fixedb: uint256

@external
def deposit():
    self.x = convert("ABC", Bytes[100])
    log Deposit(10, self.x, 15)

# ----
# deposit() ->
# ~ emit Deposit(uint256,bytes,uint256): 0x0a, 0x60, 0x0f, 0x03, "ABC"

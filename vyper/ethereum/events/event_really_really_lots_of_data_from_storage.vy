x: Bytes[100]
event Deposit:
    fixeda: uint256
    dynx: Bytes[100]
    fixedb: uint256

@external
def deposit():
    self.x = convert("ABC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z", Bytes[100])
    log Deposit(fixeda=10, dynx=self.x, fixedb=15)

# ----
# deposit() ->
# ~ emit Deposit(uint256,bytes,uint256): 0x0a, 0x60, 0x0f, 0x1f, "ABC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z"

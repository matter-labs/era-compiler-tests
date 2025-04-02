event Deposit:
    fixeda: uint256
    dynx: Bytes[100]
    fixedb: uint256

@external
def deposit():
    log Deposit(fixeda=10, dynx=slice(msg.data, 0, 4), fixedb=15)

# ----
# deposit() ->
# ~ emit Deposit(uint256,bytes,uint256): 0x0a, 0x60, 0x0f, 0x04, 0xd0e30db000000000000000000000000000000000000000000000000000000000

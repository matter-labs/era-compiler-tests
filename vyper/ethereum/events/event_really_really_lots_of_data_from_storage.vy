x: Bytes[100]
event Deposit:
    fixeda: uint256
    dynx: Bytes[100]
    fixedb: uint256

@external
def deposit():
    self.x = convert("ABC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z", Bytes[100])
    log Deposit(10, self.x, 15)

# ====
# compileViaYul: also
# ----
# deposit() ->
# ~ emit Deposit(uint256,bytes,uint256): 0x0a, 0x60, 0x0f, 0x1f, "ABC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z"

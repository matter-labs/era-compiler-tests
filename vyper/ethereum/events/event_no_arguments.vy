event Deposit:
    pass

@external
def deposit():
    log Deposit()

# ====
# compileViaYul: also
# ----
# deposit() ->
# ~ emit Deposit()

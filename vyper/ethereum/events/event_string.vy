event E:
    r: String[100]

@external
def deposit():
    log E(r="HELLO WORLD")

# ----
# deposit() ->
# ~ emit E(string): 0x20, 0x0b, "HELLO WORLD"

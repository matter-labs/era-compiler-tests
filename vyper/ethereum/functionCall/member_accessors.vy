data: public(uint256)
name: public(bytes6)
a_hash: public(bytes32)
an_address: public(address)

@deploy
def __init__():
    self.data = 8
    self.name = convert(b"Celina", bytes6)
    self.a_hash = keccak256("\x7b")
    self.an_address = convert(0x1337, address)
    self.super_secret_data = 42
    
super_secret_data: uint256

# ----
# data() -> 8
# name() -> "Celina"
# a_hash() -> 0xa91eddf639b0b768929589c1a9fd21dcb0107199bdd82e55c5348018a1572f52
# an_address() -> 0x1337
# super_secret_data() -> FAILURE

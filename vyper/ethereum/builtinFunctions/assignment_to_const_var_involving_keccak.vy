x: constant(bytes32) = keccak256("abc")

@external
def f() -> bytes32:
    return x

# ----
# f() -> 0x4e03657aea45a94fc7d47ba826c8d667c0d1e6e33a64a036ec44f58fa12d6c45

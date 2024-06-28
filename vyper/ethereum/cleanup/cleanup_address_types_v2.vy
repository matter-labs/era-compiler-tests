# Checks that address types are properly cleaned before they are compared.
@external
def f(a: address) -> uint256:
    if a != 0x1234567890123456789012345678901234567890:
        return 1
    return 0

# ----
# f(address): 0xffff1234567890123456789012345678901234567890 -> FAILURE # We input longer data on purpose.#

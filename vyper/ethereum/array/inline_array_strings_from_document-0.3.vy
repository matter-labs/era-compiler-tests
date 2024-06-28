struct string:
    inner: String[100]

@external
def f(i: uint256) -> String[100]:
    x: string[4] = [string({inner: "This"}), string({inner: "is"}), string({inner: "an"}), string({inner: "array"})]
    return (x[i].inner)

# ----
# f(uint256): 0 -> 0x20, 0x4, "This"
# f(uint256): 1 -> 0x20, 0x2, "is"
# f(uint256): 2 -> 0x20, 0x2, "an"
# f(uint256): 3 -> 0x20, 0x5, "array"

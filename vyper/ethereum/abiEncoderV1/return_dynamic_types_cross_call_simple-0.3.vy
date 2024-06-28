interface Self:
    def dyn() -> Bytes[100]: nonpayable

@external
def dyn() -> Bytes[100]:
    return convert("1234567890123456789012345678901234567890", Bytes[100])

@external
def f() -> Bytes[100]:
    return Self(self).dyn()

# ----
# f() -> 0x20, 40, "12345678901234567890123456789012", "34567890"

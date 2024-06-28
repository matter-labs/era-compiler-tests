data: public(uint256)
balance_: public(uint256)
externalData: public(Bytes[100])

@external
@payable
def __default__():
    self.data += 1
    self.balance_ = msg.value
    if len(msg.data) != 0:
        self.externalData = slice(msg.data, 0, 2)

# ----
# data() -> 0
# ()
# data() -> 1
# (): hex"42ef"
# data() -> 2
# externalData() -> 0x20, 2, left(0x42ef)
# balance_() -> 0
# (), 1 wei
# balance_() -> 1
# (), 2 wei: hex"fefe"
# balance_() -> 2
# externalData() -> 0x20, 2, left(0xfefe)

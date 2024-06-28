@external
def __default__():
    self.data = slice(msg.data, 0, 32)
@external
def _del() -> bool:
    self.data = empty(Bytes[100])
    return True
data: Bytes[100]
# ----
# (): 7 ->
# storageEmpty -> 0
# _del(): 7 -> true

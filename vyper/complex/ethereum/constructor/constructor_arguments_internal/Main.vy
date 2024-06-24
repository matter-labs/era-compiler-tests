import Helper as Helper

h: Helper

@deploy
def __init__(_helper: address):
    self.h = Helper(create_forwarder_to(_helper))
    self.h.init_(convert(convert("abc", Bytes[3]), bytes3), True)

@external
def getFlag() -> bool:
    return self.h.getFlag()

@external
def getName() -> bytes3:
    return self.h.getName()

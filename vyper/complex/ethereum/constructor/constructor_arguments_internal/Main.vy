interface Helper:
    def init_(x: bytes3, f: bool): nonpayable
    def getName() -> bytes3: view
    def getFlag() -> bool: view

h: Helper

@deploy
def __init__(_helper: address):
    self.h = Helper(create_forwarder_to(_helper))
    extcall self.h.init_(convert(convert("abc", Bytes[3]), bytes3), True)

@external
def getFlag() -> bool:
    return staticcall self.h.getFlag()

@external
def getName() -> bytes3:
    return staticcall self.h.getName()

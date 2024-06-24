import receiver as receiver

@deploy
def __init__(_receiver: address):
    self.rec = receiver(create_forwarder_to(_receiver))

@external
def __default__():
    self.savedData2 = slice(msg.data, 0, 32)
    self.savedData1 = self.savedData2

@external
def forward(selector: bool) -> bool:
    if selector:
        raw_call(self.rec.address, self.savedData1)
        self.savedData1 = empty(Bytes[100])
    else:
        raw_call(self.rec.address, self.savedData2)
        self.savedData2 = empty(Bytes[100])
    return True

@external
def val() -> uint256:
    return self.rec.received()

rec: receiver
savedData1: Bytes[100]
savedData2: Bytes[100]

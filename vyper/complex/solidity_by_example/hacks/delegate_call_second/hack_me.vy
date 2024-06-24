import lib as Lib

lib: public(address)
owner: public(address)
someNumber: public(uint256)

@deploy
def __init__(_lib: address):
    self.lib = _lib
    self.owner = msg.sender

@external
def doSomething(_num: uint256):
    raw_call(self.lib, abi_decode(_num, method_id=method_id("doSomething(uint256)")), is_delegate_call=True)

import lib as Lib

lib: public(address)
owner: public(address)
someNumber: public(uint256)

@external
def __init__(_lib: address):
    self.lib = _lib
    self.owner = msg.sender

@external
def doSomething(_num: uint256):
    raw_call(self.lib, _abi_encode(_num, method_id=method_id("doSomething(uint256)")), is_delegate_call=True)

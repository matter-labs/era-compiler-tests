import lib as Lib

owner: public(address)
lib: public(address)

@external
def __init__(_lib: address):
    self.owner = msg.sender
    self.lib = _lib

@external
@payable
def __default__():
    raw_call(self.lib, slice(msg.data, 0, 4), is_delegate_call=True)

value: uint256

@external
def set(_value: uint256):
    self.value = _value

@external
@view
def get() -> uint256:
    return self.value

@external
def get_delegated() -> bool:
    _: Bytes[100] = raw_call(self, method_id("get()"), max_outsize=100, is_delegate_call=True)
    return True
    
@external
@view
def assert0():
    assert self.value == 0

@external
def assert0_delegated() -> bool:
    _: Bytes[100] = raw_call(self, method_id("assert0()"), max_outsize=100, is_delegate_call=True)
    return True
    
# ----
# get() -> 0x00
# assert0_delegated() -> true
# get_delegated() -> true
# set(uint256): 0x01 ->
# get() -> 0x01
# assert0_delegated() -> FAILURE
# get_delegated() -> true
# set(uint256): 0x2a ->
# get() -> 0x2a
# assert0_delegated() -> FAILURE
# get_delegated() -> true

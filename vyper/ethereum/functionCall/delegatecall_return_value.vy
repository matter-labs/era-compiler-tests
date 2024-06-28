value: uint256

@external
def set(_value: uint256):
    self.value = _value

@external
@view
def get() -> uint256:
    return self.value

@external
def get_delegated() -> (bool, Bytes[100]):
    return (True, raw_call(self, method_id("get()"), max_outsize=100, is_delegate_call=True))
    
@external
@view
def assert0():
    assert self.value == 0

@external
def assert0_delegated() -> (bool, Bytes[100]):
    return (True, raw_call(self, method_id("assert0()"), max_outsize=100, is_delegate_call=True))

# ----
# get() -> 0x00
# assert0_delegated() -> 0x01, 0x40, 0x0
# get_delegated() -> 0x01, 0x40, 0x20, 0x0
# set(uint256): 0x01 ->
# get() -> 0x01
# assert0_delegated() -> FAILURE
# get_delegated() -> 0x01, 0x40, 0x20, 0x1
# set(uint256): 0x2a ->
# get() -> 0x2a
# assert0_delegated() -> FAILURE
# get_delegated() -> 0x01, 0x40, 0x20, 0x2a

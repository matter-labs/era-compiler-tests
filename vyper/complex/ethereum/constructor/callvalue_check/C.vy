# Without inheritance
# Changed the last input expected
import B3 as B3

@internal
def createWithValue(c: address, value_: uint256) -> bool:
    y: uint256 = 0
    y = convert(create_forwarder_to(c, value = value_), uint256)
    return y != 0

@external
@payable
def h(value_: uint256, _b3: address) -> bool:
    return self.createWithValue(_b3, value_)

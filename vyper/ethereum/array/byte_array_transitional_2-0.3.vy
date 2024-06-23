# Tests transition between short and long encoding both ways
data: Bytes[100]

@external
def test() -> uint256:
    self.data = b"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1A\x1B\x1C\x1D\x1E\x1F\x20"
    for i in range(33):
        if convert(slice(self.data, i, 1), bytes1) != convert(convert(i, uint8), bytes1):
            return i
    self.data = b"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1A\x1B\x1C\x1D\x1E"
    for i in range(31):
        if convert(slice(self.data, i, 1), bytes1) != convert(convert(i, uint8), bytes1):
            return i
    return 0

# ====
# compileViaYul: also
# ----
# test() -> 0
# gas irOptimized: 158143
# gas legacy: 189715
# gas legacyOptimized: 184472

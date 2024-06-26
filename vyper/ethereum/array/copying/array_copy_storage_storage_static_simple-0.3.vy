data1: bytes32[2]
data2: bytes32[2]

@external
def test() -> (bytes32, bytes32):
    for i in range(2):
        self.data1[i] = convert(shift(1 + i, 248), bytes32)
    self.data2 = self.data1
    return (self.data2[0], self.data2[1])
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> left(0x01), left(0x02)
# gas legacy: 90001
# gas legacyOptimized: 89085

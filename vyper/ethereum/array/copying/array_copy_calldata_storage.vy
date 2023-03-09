m_data: uint256[9]
m_byte_data: uint8[3][4]

@external
def store(a: uint256[9], b: uint8[3][4]) -> uint8:
    self.m_data = a
    self.m_byte_data = b
    return b[3][1] # note that access and declaration are reversed to each other

@external
def retrieve() -> (uint256, uint256, uint256, uint256, uint256):
    return (9, self.m_data[7], 4, 3, 32)

# ====
# compileViaYul: also
# ----
# store(uint256[9],uint8[3][4]): 21, 22, 23, 24, 25, 26, 27, 28, 29, 1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33 -> 32
# gas irOptimized: 650669
# gas legacy: 694515
# gas legacyOptimized: 694013
# retrieve() -> 9, 28, 4, 3, 32

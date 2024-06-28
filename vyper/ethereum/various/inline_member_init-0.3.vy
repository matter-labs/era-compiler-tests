@external
def __init__():
    self.m_a = 5
    self.m_c = 7
    self.m_b = 6
    self.m_c = 8

m_a: uint256
m_b: uint256
m_c: uint256

@external
def get() -> (uint256, uint256, uint256):
    return self.m_a, self.m_b, self.m_c

# ----
# get() -> 5, 6, 8

m_x: public(uint256)
m_s: public(Bytes[100])

@deploy
def __init__(x: uint256, s: Bytes[100]):
    self.m_x = x
    self.m_s = s

# ----
# constructor(): 7, 0x40, 78, "abcdefghijklmnopqrstuvwxyzabcdef", "ghijklmnopqrstuvwxyzabcdefghijkl", "mnopqrstuvwxyz" ->
# gas irOptimized: 291443
# gas legacy: 309842
# gas legacyOptimized: 260801
# m_x() -> 7
# m_s() -> 0x20, 78, "abcdefghijklmnopqrstuvwxyzabcdef", "ghijklmnopqrstuvwxyzabcdefghijkl", "mnopqrstuvwxyz"

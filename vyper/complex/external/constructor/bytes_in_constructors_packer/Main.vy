m_x: public(uint256)
m_s: Bytes[100]

@internal
def f(s: Bytes[100]) -> Bytes[100]:
    return s

@external
def init_(s: Bytes[100], x: uint256):
    self.m_x = x
    self.m_s = self.f(s)

@external
def part(i: uint256) -> bytes1:
    return convert(slice(self.m_s, i, 1), bytes1)

m_x: public(uint256)
m_s: DynArray[address, 10]

@internal
def f(s: DynArray[address, 10]) -> DynArray[address, 10]:
    return s

@external
def init_(s: DynArray[address, 10], x: uint256):
    self.m_x = x
    self.m_s = self.f(s)

@external
def part(i: uint256) -> address:
    return self.m_s[i]

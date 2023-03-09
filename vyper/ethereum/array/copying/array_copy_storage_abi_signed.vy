# NOTE: This does not really test copying from storage to ABI directly,
# because it will always copy to memory first.
x: int16[8]

@external
def test() -> int16[8]:
    self.x[0] = -1
    self.x[1] = -1
    self.x[2] = 8
    self.x[3] = -16
    self.x[4] = -2
    self.x[5] = 6
    self.x[6] = 8
    self.x[7] = -1
    return self.x

# ====
# compileViaYul: also
# ----
# test() -> -1, -1, 8, -16, -2, 6, 8, -1

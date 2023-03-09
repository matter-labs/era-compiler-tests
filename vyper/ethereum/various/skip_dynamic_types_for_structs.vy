interface Self:
    def s() -> (uint256, String[100], uint256): nonpayable
# For accessors, the dynamic types are already removed in the external signature itself.
struct S:
    x: uint256
    a: String[100] # this is present in the accessor
    b: DynArray[uint256, 3] # this is not present
    y: uint256
s: public(S)

@external
def g() -> (uint256, uint256):
    self.s.x = 2
    self.s.a = "abc"
    self.s.b = [7, 8, 9]
    self.s.y = 6
    x: uint256 = 0
    _: String[100] = ""
    y: uint256 = 0
    (x, _, y) = Self(self).s()
    return (x, y)

# ----
# g() -> 2, 6
# gas irOptimized: 178637
# gas legacy: 180945
# gas legacyOptimized: 179460

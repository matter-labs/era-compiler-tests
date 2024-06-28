struct S:
    a: uint256[3]
    
s: S[3]

@external
def f(c: S[3]) -> (uint256, uint256):
    self.s = c
    for i: uint256 in range(3):
        for j: uint256 in range(3):
            assert self.s[i].a[j] == c[i].a[j]
    return (3, self.s[1].a[0])

# ----
# f((uint256[3])[3]): 1, 2, 3, 1, 2, 3, 1, 2, 3 -> 3, 1
# gas irOptimized: 328592

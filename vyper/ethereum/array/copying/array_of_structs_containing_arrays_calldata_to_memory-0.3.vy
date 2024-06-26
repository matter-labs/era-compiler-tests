struct S:
    a: uint256[3]
    
@external
def f(c: S[3]) -> (uint256, uint256):
    s: S[3] = c
    for i in range(3):
        for j in range(3):
            assert s[i].a[j] == c[i].a[j]
    return (3, s[1].a[0])

# ====
# compileViaYul: also
# ----
# f((uint256[3])[3]): 1, 2, 3, 1, 2, 3, 1, 2, 3 -> 3, 1

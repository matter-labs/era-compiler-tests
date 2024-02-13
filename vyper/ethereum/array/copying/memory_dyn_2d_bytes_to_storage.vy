s: DynArray[Bytes[5], 3]

@external
def f() -> uint256:
    m: DynArray[Bytes[5], 3] = [empty(Bytes[5]), empty(Bytes[5]), empty(Bytes[5])]
    m[0] = b"ab"
    m[1] = b"cde"
    m[2] = b"fghij"
    self.s = m
    assert len(self.s) == len(m)
    
    for i in range(3):
        if not i < len(s):
            break
        assert len(s[i]) == len(m[i])
        for j in range(5):
            if not i < len(s[i]):
                break
            assert convert(slice(s[i], j, 1), bytes1) == convert(slice(m[i], j, 1), bytes1)
    
    return len(s)
    
# ----
# f() -> 3
# gas irOptimized: 128172
# gas legacy: 130757
# gas legacyOptimized: 129144

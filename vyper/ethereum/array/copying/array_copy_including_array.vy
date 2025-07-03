large: uint256[3][90][7]
small: uint256[3][3][7]

@external
def test() -> uint256:
    self.large[3][2][0] = 2
    self.large[1] = self.large[3]
    self.small[3][2][0] = 2
    self.small[1] = self.small[2]
    r: uint256 = (
        self.small[3][2][0] * convert(0x0100, uint256) |
        self.small[1][2][0]) * convert(0x0100, uint256) | (
        self.large[3][2][0] * convert(0x0100, uint256) |
        self.large[1][2][0])
    self.small = empty(uint256[3][3][7])
    self.large = empty(uint256[3][90][7])
    return r

@external
def clear() -> (uint256, uint256):
    for i: uint256 in range(7):
        self.large[i][89][2] = 2
        self.small[i][2][2] = 2
        
    self.small[3][2][0] = 0
    self.large[3][2][0] = 0
    
    for i: uint256 in range(7):
        self.small[i] = empty(uint256[3][3])
    for i: uint256 in range(7):
        self.large[i] = empty(uint256[3][90])
    ss: uint256 = 0
    sl: uint256 = 0
    for i: uint256 in range(7):
        ss += self.small[i][2][2]
        sl += self.large[i][89][2]
    return (ss, sl)

# ----
# test() -> 0x02000202
# gas irOptimized: 4652092
# gas legacy: 4578341
# gas legacyOptimized: 4548354
# storageEmpty -> 1
# clear() -> 0, 0
# gas irOptimized: 4483169
# gas legacy: 4410769
# gas legacyOptimized: 4382531
# storageEmpty -> 1

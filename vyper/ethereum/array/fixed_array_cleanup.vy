spacer1: uint256
spacer2: uint256
data: uint256[20]

@external
def fill():
    for i: uint256 in range(20):
        self.data[i] = i+1

@external
def clear():
    self.data = empty(uint256[20])

# ----
# storageEmpty -> 1
# fill() ->
# gas irOptimized: 465585
# gas legacy: 471460
# gas legacyOptimized: 467520
# storageEmpty -> 0
# clear() ->
# storageEmpty -> 1

spacer1: uint256
spacer2: uint256
data: uint256[3]
@external
def fill():
    for i in range(3):
        self.data[i] = i+1
@external
def clear():
    self.data = empty(uint256[3])
# ----
# storageEmpty -> 1
# fill() ->
# storageEmpty -> 0
# clear() ->
# storageEmpty -> 1

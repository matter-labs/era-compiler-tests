spacer: uint256[20]
dynamic: DynArray[uint256, 50]

@external
def fill():
    for i: uint256 in range(21):
        self.dynamic.append(i + 1)
        
@external
def halfClear():
    for _: uint256 in range(100):
        if not len(self.dynamic) > 5:
            break
        self.dynamic.pop()
        
@external
def fullClear():
    self.dynamic = empty(DynArray[uint256, 50])

# ----
# storageEmpty -> 1
# fill() ->
# gas irOptimized: 519616
# gas legacy: 521710
# gas legacyOptimized: 516922
# storageEmpty -> 0
# halfClear() ->
# storageEmpty -> 0
# fullClear() ->

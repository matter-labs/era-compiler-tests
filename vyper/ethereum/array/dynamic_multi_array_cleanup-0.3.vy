struct s:
    d: DynArray[DynArray[uint256, 5], 5]

data: DynArray[s, 5]

@external
def fill() -> uint256:
    for _ in range(3):
        if not len(self.data) < 3:
            break
        self.data.append(empty(s))
    for _ in range(4):
        if not len(self.data[2].d) < 4:
            break
        self.data[2].d.append(empty(DynArray[uint256, 5]))
    for _ in range(5):
        if not len(self.data[2].d[3]) < 5:
            break
        self.data[2].d[3].append(empty(uint256))
    self.data[2].d[3][4] = 8
    return self.data[2].d[3][4]

@external
def clear():
    self.data = empty(DynArray[s, 5])

# ----
# storageEmpty -> 1
# fill() -> 8
# gas irOptimized: 123024
# gas legacy: 121756
# gas legacyOptimized: 120687
# storageEmpty -> 0
# clear() ->

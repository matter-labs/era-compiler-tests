@external
def f() -> uint256:
    x: DynArray[DynArray[uint256, 50], 50] = []
    for _: uint256 in range(42):
        x.append([])
    x[0] = [0]
    x[0][0] = 1
    assert len(x[4]) == 0
    x[4] = [0]
    x[4][0] = 2
    assert len(x[10]) == 0
    x[10] = [0]
    x[10][0] = 44
    y: DynArray[DynArray[uint256, 25], 25] = []
    for _: uint256 in range(24):
        y.append([])
    assert len(y[0]) == 0
    y[0] = [0]
    y[0][0] = 1
    assert len(y[4]) == 0
    y[4] = [0]
    y[4][0] = 2
    assert len(y[10]) == 0
    y[10] = [0]
    y[10][0] = 88
    if (x[0][0] == y[0][0]) and (x[4][0] == y[4][0]) and (x[10][0] == 44) and (y[10][0] == 88):
        return 7
    return 0

# ----
# f() -> 7

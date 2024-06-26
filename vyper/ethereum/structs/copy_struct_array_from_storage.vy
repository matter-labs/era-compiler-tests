struct S:
    value: uint256
    
a: DynArray[DynArray[S, 5], 5]
b: DynArray[S, 5]

@deploy
def __init__():
    self.a.append(empty(DynArray[S, 5]))
    self.a[0].append(S(value=1))
    self.a[0].append(S(value=2))
    self.a[0].append(S(value=3))
    
    self.b.append(S(value=4))
    self.b.append(S(value=5))
    self.b.append(S(value=6))
    self.b.append(S(value=7))
    
@external
def test1() -> bool:
    self.a.append([])
    self.a[1] = self.b
    assert len(self.a) == 2
    assert len(self.a[0]) == 3
    assert len(self.a[1]) == 4
    assert self.a[1][0].value == 4
    assert self.a[1][1].value == 5
    assert self.a[1][2].value == 6
    assert self.a[1][3].value == 7
    
    return True
    
@external
def test2() -> bool:
    temp: DynArray[DynArray[S, 5], 5] = [[], []]
    
    temp = self.a
    
    assert len(temp) == 2
    assert len(temp[0]) == 3
    assert len(temp[1]) == 4
    assert temp[1][0].value == 4
    assert temp[1][1].value == 5
    assert temp[1][2].value == 6
    assert temp[1][3].value == 7
    
    return True
    
@external
def test3() -> bool:
    temp: DynArray[DynArray[S, 5], 5] = [[], []]
    
    temp[0] = self.a[0]
    temp[1] = self.a[1]

    assert len(temp) == 2
    assert len(temp[0]) == 3
    assert len(temp[1]) == 4
    assert temp[1][0].value == 4
    assert temp[1][1].value == 5
    assert temp[1][2].value == 6
    assert temp[1][3].value == 7
    
    return True

@external
def test4() -> bool:
    temp: DynArray[DynArray[S, 5], 5] = [[], []]
    
    temp[0] = self.a[0]
    temp[1] = self.b

    assert len(temp) == 2
    assert len(temp[0]) == 3
    assert len(temp[1]) == 4
    assert temp[1][0].value == 4
    assert temp[1][1].value == 5
    assert temp[1][2].value == 6
    assert temp[1][3].value == 7
    
    return True

# ====
# EVMVersion: >homestead
# ----
# test1() -> true
# gas irOptimized: 150163
# gas legacy: 150266
# gas legacyOptimized: 149875
# test2() -> true
# test3() -> true
# test4() -> true

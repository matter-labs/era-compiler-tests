a: DynArray[DynArray[HashMap[uint256, uint256], 10], 10]

@external
def n1(ley: uint256, value_: uint256):
    self.a.append([])
    self.a[len(self.a) - 1].append(empty(HashMap[uint256, uint256]))
    self.a[len(self.a) - 1][len(self.a[len(self.a) - 1]) - 1][key] = value_

@external
def n2():
    self.a.append([])
    self.a[len(self.a) - 1].append(empty(HashMap[uint256, uint256]))

@external
@view
def map(key: uint256) -> uint256:
    return self.a[len(self.a) - 1][len(self.a[len(self.a) - 1])][key]

@external
def p():
    self.a.pop()

@external
def d() -> uint256:
    self.a = empty(DynArray[DynArray[HashMap[uint256, uint256], 10], 10])
    return len(self.a)

# ----
# n1(uint256,uint256): 42, 64 ->
# map(uint256): 42 -> 64
# p() ->
# n2() ->
# map(uint256): 42 -> 64
# d() -> 0
# n2() ->
# map(uint256): 42 -> 64

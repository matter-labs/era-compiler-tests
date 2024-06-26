data: DynArray[uint256, 10]

@external
def enlarge(amount: uint256) -> uint256:
    for _: uint256 in range(10):
        if not len(self.data) < amount:
            break
        self.data.append(0)
    return len(self.data)

@external
def set(index: uint256, value_: uint256) -> bool:
    self.data[index] = value_
    return True
    
@external
def get(index: uint256) -> uint256:
    return self.data[index]
    
@external
def length() -> uint256:
    return len(self.data)

# ----
# length() -> 0
# get(uint256): 3 -> FAILURE
# enlarge(uint256): 4 -> 4
# length() -> 4
# set(uint256,uint256): 3, 4 -> true
# get(uint256): 3 -> 4
# length() -> 4
# set(uint256,uint256): 4, 8 -> FAILURE
# length() -> 4

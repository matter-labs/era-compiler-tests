arr: uint256[3]
test: public(bool)

@external
def __init__():
    self.test = False

@internal
def getElement(i: uint256) -> uint256:
    return self.arr[i]

@external
def testIt() -> bool:
    i: uint256 = self.getElement(5)
    self.test = True
    return True

# ----
# test() -> false
# testIt() -> FAILURE
# test() -> false

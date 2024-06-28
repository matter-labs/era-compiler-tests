struct Buggy:
    first: uint256
    second: uint256
    third: uint256
    last: String[100]

bug: public(Buggy)

@deploy
def __init__():
    self.bug = Buggy(first=10, second=20, third=30, last="asdfghjkl")

@external
def getFirst() -> uint256:
    return self.bug.first

@external
def getSecond() -> uint256:
    return self.bug.second

@external
def getThird() -> uint256:
    return self.bug.third

@external
def getLast() -> String[100]:
    return self.bug.last

# ----
# getFirst() -> 0x0a
# getSecond() -> 0x14
# getThird() -> 0x1e
# getLast() -> 0x20, 0x09, "asdfghjkl"

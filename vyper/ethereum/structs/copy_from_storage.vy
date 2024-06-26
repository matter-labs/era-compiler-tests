# Example from https:#github.com/ethereum/solidity/issues/12558
struct S:
    x: uint256

sStorage: S

@deploy
def __init__():
    self.sStorage.x = 13

@external
def f() -> DynArray[S, 1]:
    sMemory: DynArray[S, 1] = [empty(S)]

    sMemory[0] = self.sStorage

    return sMemory

# ----
# f() -> 0x20, 1, 13

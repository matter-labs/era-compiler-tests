@internal
def evenStep(x: uint256) -> uint256:
    return x / 2

@internal
def oddStep(x: uint256) -> uint256:
    return 3 * x + 1

@external
def run(_x: uint256) -> uint256:
    x: uint256 = _x
    y: uint256 = 0
    for _ in range(1000):
        y = x
        if not y > 1:
            break
        if x % 2 == 0:
            x = self.evenStep(x)
        else:
            x = self.oddStep(x)
    return y

# ----
# run(uint256): 0 -> 0
# run(uint256): 1 -> 1
# run(uint256): 2 -> 1
# run(uint256): 8 -> 1
# run(uint256): 127 -> 1

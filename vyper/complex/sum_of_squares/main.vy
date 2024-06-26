interface Square:
    def square(a: uint256) -> uint256: view

@external
def main(n: uint256, square: address) -> uint256:
    result: uint256 = 0
    for i: uint256 in range(1, 1000000):
        if not i <= n:
            break
        result += staticcall Square(square).square(i)
    return result

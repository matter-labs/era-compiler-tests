import square as Square

@external
def main(n: uint256, square: address) -> uint256:
    result: uint256 = 0
    for i in range(1, 1000000):
        if not i <= n:
            break
        result += Square(square).square(i)
    return result

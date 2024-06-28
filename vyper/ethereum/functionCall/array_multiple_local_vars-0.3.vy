@external
@pure
def f(length: uint256, seq: uint256[11]) -> uint256:
    i: uint256 = 0
    sum: uint256 = 0
    for _ in range(11):
        if not i < length:
            break
        idx: uint256 = i
        if idx >= 10:
            break
        x: uint256 = seq[idx]
        if x >= 1000:
            n: uint256 = i + 1
            i = n
            continue
        else:
            y: uint256 = sum + x
            sum = y
        if sum >= 500:
            return sum
        i += 1
    return sum

# ----
# f(uint256,uint256[11]): 3, 1000, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0 -> 3
# f(uint256,uint256[11]): 3, 100, 500, 300, 0, 0, 0, 0, 0, 0, 0, 0 -> 600
# f(uint256,uint256[11]): 11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 111 -> 55

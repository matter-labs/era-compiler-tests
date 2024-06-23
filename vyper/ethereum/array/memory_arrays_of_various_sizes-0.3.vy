# Computes binomial coefficients the chinese way
@external
def f(n: uint256, k: uint256) -> uint256:
    rows: DynArray[DynArray[uint256, 20], 20] = []
    for i in range(20):
        if not i < n + 1:
            break
        rows.append([])
    for i in range(1, 20):
        if not i <= n:
            break
        rows[i] = []
        for j in range(20):
            if not j < i:
                break
            rows[i].append(0)

        rows[i][0] = 1
        rows[i][len(rows[i])-1] = 1

        for j in range (1, 20):
            if not j < i - 1:
                break
            rows[i][j] = rows[i - 1][j - 1] + rows[i - 1][j]

    return rows[n][k - 1]

# ----
# f(uint256,uint256): 3, 1 -> 1
# f(uint256,uint256): 9, 5 -> 70

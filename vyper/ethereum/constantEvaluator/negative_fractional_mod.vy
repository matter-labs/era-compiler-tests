@external
@pure
def f() -> (int128, int128):
    x: int128 = convert((-(-5.2 % 3.0)) * 5.0, int128)
    t: int128 = 5
    return (x, (-(-t % 3)) * 5)

# ----
# f() -> 11, 10

@external
def f() -> uint256:
    # This used to work without causing an error.
    x: DynArray[uint256, 3618502788666131106986593281521497120414687020801267626233049500247285301248] = []
    for _ in range(2**251):
        x.append(0)
    y: DynArray[uint256, 3618502788666131106986593281521497120414687020801267626233049500247285301248] = [0]
    x[1] = 42
    # This used to overwrite the value written above.
    y[0] = 23
    return x[1]

@external
def g() -> uint256:
    # This used to work without causing an error.
    x: DynArray[uint16, 57896044618658097711785492504343953926634992332820282019728792003956564819969] = []
    for _ in range(2**255 + 1):
        x.append(0)
    y: DynArray[uint16, 57896044618658097711785492504343953926634992332820282019728792003956564819969] = [0]
    x[2] = 42
    # This used to overwrite the value written above.
    y[0] = 23
    return convert(x[2], uint256)

# ----
# f() -> FAILURE
# g() -> FAILURE

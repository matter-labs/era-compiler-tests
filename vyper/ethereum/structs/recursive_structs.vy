struct S:
    x: DynArray[S, 10]
sstorage: S

@external
def f() -> uint256:
    s: S = empty(S)
    s.x = [empty(S), empty(S), empty(S), empty(S), empty(S), empty(S), empty(S), empty(S), empty(S), empty(S)]
    s = empty(S)
    # TODO Uncomment after implemented.
    # self.sstorage.x.append(empty(S));
    self.sstorage = empty(S)
    return 1

# ----
# f() -> 1

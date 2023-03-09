x: public(uint256)

@external
def __default__():
    if self.x == 2:
        return
    self.x += 1
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# ()
# x() -> 1
# ()
# x() -> 2
# ()
# x() -> 2
# ()
# x() -> 2

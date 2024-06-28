struct shouldBug:
    deadly: DynArray[uint256, 10][2]

@external
@pure
def killer(weapon: DynArray[uint256, 10][2]) -> shouldBug:
    return shouldBug({deadly: weapon})

# ----
# killer(uint256[][2]): 0x20, 0x40, 0x40, 2, 1, 2 -> 0x20, 0x20, 0x40, 0xa0, 2, 1, 2, 2, 1, 2

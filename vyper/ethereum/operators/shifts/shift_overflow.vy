@external
def leftU(x: uint256, y: uint16) -> uint256:
    return x << y

# ----
# leftU(uint256,uint16): 255, 256 -> 0
# leftU(uint256,uint16): 255, 249 -> left(254)
# leftU(uint256,uint16): 255, 0 -> 255

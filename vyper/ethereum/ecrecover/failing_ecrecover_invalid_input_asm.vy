@external
def f() -> address:
    return ecrecover(
        0x77e5189111eb6557e8a637b27ef8fbb15bc61d61c2f00cc48878f3a296e5e0ca,
        0, # invalid v value
        convert(0x6944c77849b18048f6abe0db8084b0d0d0689cdddb53d2671c36967b58691ad4, uint256),
        convert(0xef4f06ba4f78319baafd0424365777241af4dfd3da840471b4b4b087b7750d0d, uint256)
    )

# ----
# f() -> 0

@internal
def recover(hash: bytes32, v: uint8, r: bytes32, s: bytes32, blockExpired: uint256, salt: bytes32) -> address:
    assert hash == keccak256(_abi_encode(blockExpired, salt))
    return ecrecover(hash, convert(v, uint256), convert(r, uint256), convert(s, uint256))

@external
def f() -> address:
    return self.recover(
        0x77e5189111eb6557e8a637b27ef8fbb15bc61d61c2f00cc48878f3a296e5e0ca,
        0, # invalid v value
        0x6944c77849b18048f6abe0db8084b0d0d0689cdddb53d2671c36967b58691ad4,
        0xef4f06ba4f78319baafd0424365777241af4dfd3da840471b4b4b087b7750d0d,
        convert(0x000000000000000000000000ca35b7d915458ef540ade6068dfe2f44e8fa733c, uint256),
        0x000000000000000000000000ca35b7d915458ef540ade6068dfe2f44e8fa733c
    )

# ====
# compileViaYul: also
# ----
# f() -> 0

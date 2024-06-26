interface Self:
    def test(a: uint256[4][2], i: uint256, j: uint256) -> uint256: nonpayable

@external
def test(a: uint256[4][2], i: uint256, j: uint256) -> uint256:
    return a[i][j]
    
@external
def reenc(a: uint256[4][2], i: uint256, j: uint256) -> uint256:
    return extcall Self(self).test(a, i, j)
    
# ----
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 0 -> 0x0A01
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 0 -> 0x0A01
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 1 -> 0x0A02
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 1 -> 0x0A02
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 2 -> 0x0A03
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 2 -> 0x0A03
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 0 -> 0x0B01
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 0 -> 0x0B01
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 1 -> 0x0B02
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 1 -> 0x0B02
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 2 -> 0x0B03
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 2 -> 0x0B03
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 3 -> 0x0B04
# reenc(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 3 -> 0x0B04
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 0, 3 -> 0
# test(uint256[4][2],uint256,uint256): 0x0A01, 0x0A02, 0x0A03, 0, 0x0B01, 0x0B02, 0x0B03, 0x0B04, 1, 4 -> FAILURE

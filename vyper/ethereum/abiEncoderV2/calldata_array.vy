interface Self:
    def g(_: DynArray[uint256, 10]) -> Bytes[100]: view
    
@external
@view
def g(_: DynArray[uint256, 10]) -> Bytes[400]:
    # Replaced with abi_encode
    # return msg.data
    return abi_encode(_)
    
@external
@view
def f(s: DynArray[uint256, 10][1]) -> bool:
    a: Bytes[400] = staticcall Self(self).g(s[0])
    m: DynArray[uint256, 10] = s[0]
    b: Bytes[400] = staticcall Self(self).g(m)
    assert len(a) == len(b)
    for i: uint256 in range(400):
        if not i < len(a):
            break
        assert slice(a, i, 1) == slice(b, i, 1)
    return True
    
# ----
# f(uint256[][1]): 32, 32, 0 -> true
# f(uint256[][1]): 32, 32, 1, 42 -> true
# f(uint256[][1]): 32, 32, 8, 421, 422, 423, 424, 425, 426, 427, 428 -> FAILURE
# gas irOptimized: 128098
# gas legacy: 140672
# gas legacyOptimized: 119588

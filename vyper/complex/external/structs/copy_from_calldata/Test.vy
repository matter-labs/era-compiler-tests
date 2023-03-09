# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems
# Example from https:#github.com/ethereum/solidity/issues/12558

import C as C

c: immutable(C)

@external
def __init__(_c: address):
    c = C(create_forwarder_to(_c))
    
@external
def test() -> bool:
    arr: DynArray[uint256, 4] = empty(DynArray[uint256, 4])
    
    arr[0] = 13
    arr[1] = 14
    arr[2] = 15
    arr[3] = 16
    
    ret: DynArray[DynArray[uint256, 5], 2] = c.f(arr)
    assert len(ret) == 2
    assert len(ret[0]) == 4
    assert ret[0][0] == 13
    assert ret[0][1] == 14
    assert ret[0][2] == 15
    assert ret[0][3] == 16
    assert len(ret[1]) == 0
    
    return True

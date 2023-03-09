@external
@pure
def f(_input: uint16) -> uint16[5]:
    input: uint16 = _input
    arr: uint16[5] = empty(uint16[5])
    arr[0] = input
    input += 1
    arr[1] = input
    input += 1
    arr[2] = input
    input += 1
    arr[3] = input
    input += 1
    arr[4] = input
    return arr

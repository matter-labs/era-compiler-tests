#! { "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!     ]
#! } ] }


# [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
# [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
# [1, 2, 3, 4, 5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
# [1] -- remove(0) --> [1] --> []

arr: public(DynArray[uint256, 10])

@internal
def remove(_index: uint256):
    assert _index < len(self.arr), "index out of bound"

    for i in range(_index, _index + 10):
        if not i < len(self.arr) - 1:
            break
        self.arr[i] = self.arr[i + 1]
    self.arr.pop()

@external
def test():
    self.arr = [1, 2, 3, 4, 5]
    self.remove(2)
    # [1, 2, 4, 5]
    assert self.arr[0] == 1
    assert self.arr[1] == 2
    assert self.arr[2] == 4
    assert self.arr[3] == 5
    assert len(self.arr) == 4

    self.arr = [1]
    self.remove(0)
    # []
    assert len(self.arr) == 0

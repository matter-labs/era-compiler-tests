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


arr: public(DynArray[uint256, 10])

# Deleting an element creates a gap in the array.
# One trick to keep the array compact is to
# move the last element into the place to delete.
@internal
def remove(index: uint256):
    # Move the last element into the place to delete
    self.arr[index] = self.arr[len(self.arr) - 1]
    # Remove the last element
    self.arr.pop()

@external
def test():
    self.arr = [1, 2, 3, 4]

    self.remove(1)
    # [1, 4, 3]
    assert len(self.arr) == 3
    assert self.arr[0] == 1
    assert self.arr[1] == 4
    assert self.arr[2] == 3

    self.remove(2)
    # [1, 4]
    assert len(self.arr) == 2
    assert self.arr[0] == 1
    assert self.arr[1] == 4


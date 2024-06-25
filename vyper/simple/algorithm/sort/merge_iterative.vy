#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "none",
#!     "inputs": [
#!         {
#!             "method": "mergeSort",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7", "2", "1", "8", "10", "3", "5", "4", "9", "6"
#!     ]
#! }, {
#!     "name": "ascending",
#!     "inputs": [
#!         {
#!             "method": "mergeSort",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
#!     ]
#! }, {
#!     "name": "descending",
#!     "inputs": [
#!         {
#!             "method": "mergeSort",
#!             "calldata": [
#!                 "7", "2", "1", "8", "10", "3", "5", "4", "9", "6", "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10", "9", "8", "7", "6", "5", "4", "3", "2", "1"
#!     ]
#! } ] }

ARRAY_SIZE: constant(uint8) = 10

DirectionNone: constant(uint8) = 0
DirectionAscending: constant(uint8) = 1
DirectionDescending: constant(uint8) = 2

# Iterative merge sort
# with memory usage (O(n)) and complexity O(n*log(n))
@external
@pure
def mergeSort(_array: uint8[ARRAY_SIZE], direction: uint8) -> uint8[ARRAY_SIZE]:
    array: uint8[ARRAY_SIZE] = _array
    size: uint8 = 1
    tmp: uint8[ARRAY_SIZE] = empty(uint8[ARRAY_SIZE])

    for _: uint8 in range(ARRAY_SIZE):
        if not size < ARRAY_SIZE:
            break
        ptr: uint8 = 0
        for __: uint8 in range(ARRAY_SIZE):
            if not ptr < ARRAY_SIZE:
                break
            mid: uint8 = ptr + size
            if mid > ARRAY_SIZE:
                mid = ARRAY_SIZE

            last: uint8 = ptr + 2 * size
            if last > ARRAY_SIZE:
                last = ARRAY_SIZE

            ptr1: uint8 = ptr
            ptr2: uint8 = ptr + size

            for ___: uint8 in range(ARRAY_SIZE):
                if not (ptr1 < mid and ptr2 < last):
                    break
                if direction == DirectionNone or (direction == DirectionAscending and array[ptr1] < array[ptr2]) or (direction == DirectionDescending and array[ptr1] > array[ptr2]):
                    tmp[ptr] = array[ptr1]
                    ptr1 += 1
                else:
                   tmp[ptr] = array[ptr2]
                   ptr2 += 1
                ptr += 1

            for ___: uint8 in range(ARRAY_SIZE):
                if not ptr1 < mid:
                    break
                tmp[ptr] = array[ptr1]
                ptr += 1
                ptr1 += 1

            for ___: uint8 in range(ARRAY_SIZE):
                if not ptr2 < last:
                    break
                tmp[ptr] = array[ptr2]
                ptr += 1
                ptr2 += 1
        for i: uint8 in range(ARRAY_SIZE):
            array[i] = tmp[i]
        size *= 2
    return array

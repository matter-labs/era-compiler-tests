#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "getRoot",
#!             "calldata": [
#!             ],
#!             "expected": [
#!                 "0xcc086fcc038189b4641db2cc4f1de3bb132aefbd65d510d817591550937818c7"
#!             ]
#!         }, {
#!             "method": "verify",
#!             "calldata": [
#!                 "0x80",
#!                 "0x074b43252ffb4a469154df5fb7fe4ecce30953ba8b7095fe1e006185f017ad10",
#!                 "0x1bbd78ae6188015c4a6772eb1526292b5985fc3272ead4c65002240fb9ae5d13",
#!                 "2",
#!                 "2",
#!                 "0x948f90037b4ea787c14540d9feb1034d4a5bc251b9b5f8e57d81e4b470027af8",
#!                 "0x63ac1b92046d474f84be3aa0ee04ffe5600862228c81803cce07ac40484aee43",
#!                 "0",
#!                 "0",
#!                 "0",
#!                 "0",
#!                 "0",
#!                 "0",
#!                 "0",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def verify(proof: bytes32[10], length: uint256, root: bytes32, leaf: bytes32, _index: uint256) -> bool:
    index: uint256 = _index
    hash: bytes32 = leaf

    for i: uint256 in range(10):
        if not i < length:
            break
        proofElement: bytes32 = proof[i]

        if index % 2 == 0:
            hash = keccak256(abi_encode(hash, proofElement))
        else:
            hash = keccak256(abi_encode(proofElement, hash))

        index = index // 2

    return hash == root

hashes: public(bytes32[10])
count: public(uint256)

struct Transaction:
    text: String[100]

@deploy
def __init__():
    transactions: Transaction[4] = [
        Transaction( text: "alice -> bob"),
        Transaction( text: "bob -> dave"),
        Transaction( text: "carol -> alice"),
        Transaction( text: "dave -> bob")
    ]

    for i: uint256 in range(0, 4):
        self.hashes[self.count] = keccak256(transactions[i].text)
        self.count += 1

    n: uint256 = 4
    offset: uint256 = 0

    for _: uint256 in range(10):
        if not n > 0:
            break
        for i: uint256 in range(10):
            if i % 2 == 1:
                continue
            if not i < n-1:
                break
            self.hashes[self.count] = keccak256(abi_encode(self.hashes[offset + i], self.hashes[offset + i + 1]))
            self.count += 1
        offset += n
        n = n // 2

@external
@view
def getRoot() -> bytes32:
    return self.hashes[self.count - 1]

# verify
# 3rd leaf
# 0x1bbd78ae6188015c4a6772eb1526292b5985fc3272ead4c65002240fb9ae5d13
#
# root
# 0x074b43252ffb4a469154df5fb7fe4ecce30953ba8b7095fe1e006185f017ad10
#
# index
# 2
#
# proof
# 0x948f90037b4ea787c14540d9feb1034d4a5bc251b9b5f8e57d81e4b470027af8
# 0x63ac1b92046d474f84be3aa0ee04ffe5600862228c81803cce07ac40484aee43

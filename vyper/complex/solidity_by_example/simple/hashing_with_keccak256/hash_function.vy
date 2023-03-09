@external
@pure
def hash(_text: String[100], _num: uint256, _addr: address) -> bytes32:
    return keccak256(concat(convert(_text, Bytes[100]), convert(_num, bytes32), slice(convert(_addr, bytes32), 12, 20)))

# Example of hash collision
# Hash collision can occur when you pass more than one dynamic data type
# to abi.encodePacked. In such case, you should use abi.encode instead.
@external
@pure
def collision(_text: String[100], _anotherText: String[100]) -> bytes32:
    # encodePacked(AAA, BBB) -> AAABBB
    # encodePacked(AA, ABBB) -> AAABBB
    return keccak256(concat(_text, _anotherText))

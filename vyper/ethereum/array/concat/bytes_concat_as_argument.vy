@external
def f(a: Bytes[100], b: Bytes[100]) -> bytes32:
    return keccak256(concat(a, b))
    
@internal
def h(a: Bytes[200]) -> uint256:
    return len(a)
    
@external
def g(a: Bytes[100], b: Bytes[100]) -> uint256:
    return self.h(concat(a, b))

# ====
# compileViaYul: also
# ----
# f(bytes,bytes): 0x40, 0x80, 32, "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef" -> 0x1106e19b6f06d1cce71c2d816754f83dfa5b95df958c5cbf12b7c472320c427c
# g(bytes,bytes): 0x40, 0x80, 32, "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef" -> 37

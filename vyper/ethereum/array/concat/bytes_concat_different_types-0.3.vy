s: Bytes[5]

@external
def __init__():
    self.s = b"bcdef"

@external
def f(a: Bytes[100]) -> Bytes[105]:
    return concat(a, b"bcdef")

@external
def g(a: Bytes[100]) -> Bytes[134]:
    return concat(a, b"abcdefghabcdefghabcdefghabcdefghab")

@external
def h(a: Bytes[100]) -> Bytes[105]:
    return concat(a, self.s)

@external
def j(a: Bytes[100]) -> Bytes[110]:
    ref: Bytes[5] = self.s
    return concat(a, ref, self.s)

@external
def k(a: Bytes[100], b: String[100]) -> Bytes[200]:
    return concat(a, convert(b, Bytes[100]))

@external
def _slice(a: Bytes[100]) -> Bytes[100]:
    assert len(a) > 2
    return concat(slice(a, 0, 2), slice(a, 2, 2))

@external
def strParam(a: String[100]) -> Bytes[105]:
    return concat(convert(a, Bytes[100]), b"bcdef")

@external
def fixedBytesParam(b1: bytes16, b2: bytes15, b3: bytes31) -> (Bytes[100], Bytes[100], Bytes[100], Bytes[100]):
    return (concat(b1, b2), concat(b1, b3), concat(b1, b"bcdef"), concat(b1, self.s))

@external
def fixedBytesParam2(c: Bytes[100], b1: bytes6, b2: bytes6) -> (Bytes[200], Bytes[200]):
    return (concat(self.s, b1, c), concat(b1, c, b2))

# ----
# f(bytes): 0x20, 32, "abcdabcdabcdabcdabcdabcdabcdabcd" -> 0x20, 37, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef"
# g(bytes): 0x20, 32, "abcdabcdabcdabcdabcdabcdabcdabcd" -> 0x20, 66, "abcdabcdabcdabcdabcdabcdabcdabcd", "abcdefghabcdefghabcdefghabcdefgh", "ab"
# h(bytes): 0x20, 32, "abcdabcdabcdabcdabcdabcdabcdabcd" -> 0x20, 37, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef"
# j(bytes): 0x20, 32, "abcdabcdabcdabcdabcdabcdabcdabcd" -> 0x20, 42, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdefbcdef"
# k(bytes,string): 0x40, 0x80, 32, "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef" -> 0x20, 37, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef"
# _slice(bytes): 0x20, 4, "abcd" -> 0x20, 4, "abcd"
# strParam(string): 0x20, 32, "abcdabcdabcdabcdabcdabcdabcdabcd" -> 0x20, 37, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef"
# fixedBytesParam(bytes16,bytes15,bytes31):
#  "aabbccddeeffgghh",
#  "abcdefghabcdefg",
#  "0123456789012345678901234567890" ->
#  0x80, 0xc0, 0x120, 0x160,
#  31, "aabbccddeeffgghhabcdefghabcdefg",
#  47, "aabbccddeeffgghh0123456789012345", "678901234567890",
#  21, "aabbccddeeffgghhbcdef",
#  21, "aabbccddeeffgghhbcdef"
# fixedBytesParam2(bytes,bytes6,bytes6): 0x60, left(0x010203040506), left(0x0708090A0B0C), 20, left(0x1011121314151617181920212223242526272829) ->
#   0x40, 0x80,
#   31, left(0x62636465660102030405061011121314151617181920212223242526272829),
#   32, 0x01020304050610111213141516171819202122232425262728290708090A0B0C
# fixedBytesParam2(bytes,bytes6,bytes6): 0x60, left(0x01), left(0x02), 5, left(0x03) ->
#   0x40, 0x80,
#   16, left(0x6263646566010000000000030000000000),
#   17, left(0x010000000000030000000002000000000000)

b: constant(bytes32) = 0x6162636465666768696a6b6c6d6e6f7071000000000000000000000000000000
x: constant(String[100]) = "abefghijklmnopqabcdefghijklmnopqabcdefghijklmnopqabca"

@deploy
def __init__():
    xx: String[100] = x
    bb: bytes32 = b
    
@external
def getB() -> bytes32:
    return b

@external
def getX() -> String[100]:
    return x
    
@external
def getX2() -> String[100]:
    r: String[100] = x
    return r

@external
def unused() -> uint256:
    "unusedunusedunusedunusedunusedunusedunusedunusedunusedunusedunusedunused"
    return 2

# ====
# compileViaYul: also
# ----
# getB() -> 0x6162636465666768696a6b6c6d6e6f7071000000000000000000000000000000
# getX() -> 0x20, 0x35, 0x616265666768696a6b6c6d6e6f70716162636465666768696a6b6c6d6e6f7071, 44048183304486788312148433451363384677562177293131179093971701692629931524096
# getX2() -> 0x20, 0x35, 0x616265666768696a6b6c6d6e6f70716162636465666768696a6b6c6d6e6f7071, 44048183304486788312148433451363384677562177293131179093971701692629931524096
# unused() -> 2

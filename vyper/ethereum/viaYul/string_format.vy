@external
@pure
def f1() -> String[100]:
    return "abcabc"
    
@external
@pure
def f2() -> String[100]:
    return "abcabc`~12345677890- _=+!@#$%^&*()[{]}|;:',<.>?"
    
@external
@pure
def g() -> bytes32:
    return convert(b"abcabc", bytes32)
    
@external
@pure
def h() -> bytes4:
    return 0xcafecafe
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f1() -> 0x20, 6, left(0x616263616263)
# f2() -> 32, 47, 44048183223289766195424279195050628400112610419087780792899004030957505095210, 18165586057823232067963737336409268114628061002662705707816940456850361417728
# g() -> left(0x616263616263)
# h() -> left(0xcafecafe)

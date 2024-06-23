uninitializedString: String[100]
emptyString: String[100]
nonEmptyString: String[100]
nonEmptyString2: String[100]
uninitializedBytes: Bytes[100]
emptyBytes: Bytes[200]
event EmptyEvent:
    _: String[100]

@external
def __init__():
    self.emptyString = ""
    self.nonEmptyString = "This is a non empty string"
    self.nonEmptyString2 = "Another string"
    self.emptyBytes = b""

@external
def f() -> String[100]:
    return self.uninitializedString

@external
def g() -> (String[100], String[100]):
    return (self.uninitializedString, self.emptyString)

@external
def h() -> (String[100], String[100]):
    return (self.uninitializedString, self.nonEmptyString)

@external
def i() -> (String[100], String[100]):
    return (self.nonEmptyString, self.emptyString)

@external
def j(_s: String[100]) -> String[100]:
    return _s

@external
def k() -> String[100]:
    self.nonEmptyString2 = ""
    return self.nonEmptyString2

@external
def l(_s: String[100]) -> Bytes[192]:
    return _abi_encode(_s)

@external
def m() -> String[192]:
    b: Bytes[192] = _abi_encode(self.emptyString)
    return convert(b, String[192])

@external
def o():
    log EmptyEvent(self.emptyString)
    
@external
def p():
    log EmptyEvent("")
     
@external
def q() -> Bytes[100]:
    return self.uninitializedBytes
    
@external
def r() -> Bytes[200]:
    self.emptyBytes = _abi_encode("")
    return self.emptyBytes

@external
def s() -> Bytes[200]:
    self.emptyBytes = _abi_encode(self.uninitializedString)
    return self.emptyBytes

@external
def set(_s: String[100]):
    self.nonEmptyString = _s

@external
def get() -> String[100]:
    return self.nonEmptyString

# ====
# compileViaYul: also
# ----
# f() -> 0x20, 0
# g() -> 0x40, 0x60, 0, 0
# h() -> 0x40, 0x60, 0, 0x1a, 38178759162904981154304545770567765692299154484752076569098748838215919075328
# i() -> 0x40, 0x80, 0x1a, 38178759162904981154304545770567765692299154484752076569098748838215919075328, 0
# j(string): 0x20, 0, "" -> 0x20, 0
# k() -> 0x20, 0
# l(string): 0x20, 0, "" -> 0x20, 0x40, 0x20, 0
# m() -> 0x20, 0x40, 0x20, 0
# o() ->
# ~ emit EmptyEvent(string): 0x20, 0x00
# p() ->
# ~ emit EmptyEvent(string): 0x20, 0x00
# q() -> 0x20, 0
# r() -> 0x20, 0x40, 0x20, 0
# s() -> 0x20, 0x40, 0x20, 0
# set(string): 0x20, 0, "" ->
# get() -> 0x20, 0

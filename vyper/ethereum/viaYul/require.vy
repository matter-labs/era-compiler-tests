@external
@pure
def f(a: bool) -> bool:
    b: bool = a
    x: bool = b
    assert b
    return x

@external
@pure
def fail() -> bool:
    raise

@external
@pure
def succeed() -> bool:
    x: bool = True
    assert True
    return x

@external
@pure
def f2(a: bool) -> bool:
    x: bool = a
    message: String[100] = empty(String[100])
    message = "fancy message!"
    assert a, message
    return x
    
@external
@pure
def f3(a: bool) -> bool:
    x: bool = a
    assert a, "msg"
    return x

@external
@pure
def f4(a: bool) -> bool:
    x: bool = a
    message: String[100] = empty(String[100])
    assert a, message
    return x
    
# ====
# EVMVersion: >=byzantium
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bool): true -> true
# f(bool): false -> FAILURE
# fail() -> FAILURE
# succeed() -> true
# f2(bool): true -> true
# f2(bool): false -> FAILURE, hex"08c379a0", 0x20, 14, "fancy message!"
# f3(bool): true -> true
# f3(bool): false -> FAILURE, hex"08c379a0", 0x20, 3, "msg"
# f4(bool): true -> true
# f4(bool): false -> FAILURE, hex"08c379a0", 0x20, 0

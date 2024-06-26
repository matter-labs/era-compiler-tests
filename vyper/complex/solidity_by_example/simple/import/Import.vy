import IFoo as Foo

# Test Foo.sol by getting it's name.
@external
@view
def getFooName(foo: address) -> String[10]:
    return staticcall Foo(foo).name()

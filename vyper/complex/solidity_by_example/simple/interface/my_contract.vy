interface ICounter:
    def count() -> uint256: view

    def increment(): nonpayable

@external
def incrementCounter(_counter: address):
    extcall ICounter(_counter).increment()

@external
@view
def getCount(_counter: address) -> uint256:
    return staticcall ICounter(_counter).count()

#! { "modes": [ "V >=0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "foo",
#!             "calldata": []
#!         }
#!     ],
#!     "expected": [
#!         "0x20", "0x04", "0", "1", "0", "1"
#!     ]
#! } ] }

GAS_AMOUNT: constant(uint256) = 10000

@external
@payable
def foo() -> DynArray[bool, 4]:
    values: DynArray[bool, 4] = []
    if True:
        a1: uint256 = msg.gas
        ret: bool = raw_call(self, method_id("assert_()"), revert_on_failure=False, gas = GAS_AMOUNT) 
        a2: uint256 = msg.gas
        assert not ret
        values.append(a1 - a2 > GAS_AMOUNT)
    if True:
        a1: uint256 = msg.gas
        ret: bool = raw_call(self, method_id("assert_unreachable()"), revert_on_failure=False, gas = GAS_AMOUNT) 
        a2: uint256 = msg.gas
        assert not ret
        values.append(a1 - a2 > GAS_AMOUNT)
    if True:
        a1: uint256 = msg.gas
        ret: bool = raw_call(self, method_id("raise_()"), revert_on_failure=False, gas = GAS_AMOUNT) 
        a2: uint256 = msg.gas
        assert not ret
        values.append(a1 - a2 > GAS_AMOUNT)
    if True:
        a1: uint256 = msg.gas
        ret: bool = raw_call(self, method_id("raise_unreachable()"), revert_on_failure=False, gas = GAS_AMOUNT) 
        a2: uint256 = msg.gas
        assert not ret
        values.append(a1 - a2 > GAS_AMOUNT)
    return values

@external
def assert_():
    x:bool = False
    assert x

@external
def assert_unreachable():
    x:bool = False
    assert x, UNREACHABLE

@external
def raise_():
    raise

@external
def raise_unreachable():
    raise UNREACHABLE
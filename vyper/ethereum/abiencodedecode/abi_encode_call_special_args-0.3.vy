sideEffectRan: bool

@external
def __init__():
    self.sideEffectRan = False

@external
@pure
def fSignatureFromLiteralArray() -> Bytes[200]:
    x: uint256[2] = empty(uint256[2])
    return _abi_encode(x, method_id=method_id("fArray(uint256[2])"))

@external
@pure
def fSignatureFromLiteralUint() -> Bytes[200]:
    return _abi_encode(convert(12, uint256), convert(13, uint256), method_id=method_id("fUint(uint256,uint256)"))

# ----
# fSignatureFromLiteralArray() -> 0x20, 0x44, 77073551640427963899518108907332962367905605068368329150384236291336897036288, 0, 0
# fSignatureFromLiteralUint() -> 0x20, 0x44, 30372892641494467502622535050667754357470287521126424526399600764424271429632, 323519360005807677536004181044235568083645733070486869773243322990592, 350479306672958317330671196131255198757282877493027442254346933239808


# tests encoding from storage arrays

tmp_i: uint256[2][2]

@external
def i(s: uint256[2][2]) -> Bytes[128]:
    self.tmp_i = s
    return _abi_encode(self.tmp_i)
    
# ====
# EVMVersion: >homestead
# compileViaYul: also
# ----
# i(uint256[2][2]): 123, 124, 223, 224 -> 32, 128, 123, 124, 223, 224
# gas irOptimized: 112535
# gas legacy: 115468
# gas legacyOptimized: 112988

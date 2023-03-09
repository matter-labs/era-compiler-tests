@external
def g(msg_: String[100]):
    raise msg_
    
# ====
# ABIEncoderV1Only: true
# EVMVersion: >=byzantium
# revertStrings: debug
# compileViaYul: false
# ----
# g(string): 0x20, 0, "" -> FAILURE, hex"08c379a0", 0x20, 0
# g(string): 0x20, 0 -> FAILURE, hex"08c379a0", 0x20, 0

@external
@pure
def short_dyn() -> String[100]:
    return "abc"
    
@external
@pure
def long_dyn() -> String[100]:
    return "12345678901234567890123456789012345678901234567890123456789012345678901234567890"
        
@external
@pure
def short_bytes_dyn() -> Bytes[100]:
    return b"abc"
 
@external
@pure
def long_bytes_dyn() -> Bytes[100]:
    return b"12345678901234567890123456789012345678901234567890123456789012345678901234567890"    

@external
@pure
def bytesNN() -> bytes3:
    return convert(b"abc", bytes3)    

@external
@pure
def bytesNN_padded() -> bytes4:
    return convert(b"abc", bytes4)   

# ----
# short_dyn() -> 0x20, 3, "abc"
# long_dyn() -> 0x20, 80, "12345678901234567890123456789012", "34567890123456789012345678901234", "5678901234567890"
# short_bytes_dyn() -> 0x20, 3, "abc"
# long_bytes_dyn() -> 0x20, 80, "12345678901234567890123456789012", "34567890123456789012345678901234", "5678901234567890"
# bytesNN() -> 0x6162630000000000000000000000000000000000000000000000000000000000
# bytesNN_padded() -> 0x6162630000000000000000000000000000000000000000000000000000000000

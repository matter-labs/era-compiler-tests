@external
@pure
def oneByteUTF8() -> String[100]:
    return "aaa\u0024aaa" # usdollar

@external
@pure
def twoBytesUTF8() -> String[100]:
    return "aaa\u00A2aaa" # cent

@external
@pure
def threeBytesUTF8() -> String[100]:
    return "aaa\u20ACaaa" # euro

@external
@pure
def combined() -> String[100]:
    return "\u0024\u00A2\u20AC"

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# oneByteUTF8() -> 0x20, 7, "aaa$aaa"
# twoBytesUTF8() -> 0x20, 8, "aaa\xc2\xa2aaa"
# threeBytesUTF8() -> 0x20, 9, "aaa\xe2\x82\xacaaa"
# combined() -> 0x20, 6, "$\xc2\xa2\xe2\x82\xac"

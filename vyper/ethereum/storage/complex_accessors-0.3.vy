to_string_map: public(HashMap[uint256, bytes4])
to_bool_map: public(HashMap[uint256, bool])
to_uint_map: public(HashMap[uint256, uint256])
to_multiple_map: public(HashMap[uint256, HashMap[uint256, uint256]])

@external
def __init__():
    self.to_string_map[42] = convert(b"24", bytes4)
    self.to_bool_map[42] = False
    self.to_uint_map[42] = 12
    self.to_multiple_map[42][23] = 31

# ----
# to_string_map(uint256): 42 -> "24"
# to_bool_map(uint256): 42 -> false
# to_uint_map(uint256): 42 -> 12
# to_multiple_map(uint256,uint256): 42, 23 -> 31

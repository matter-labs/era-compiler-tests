# Test for a bug where we did not increment the counter properly while deleting a dynamic array.
struct S:
    x: uint256
    y: uint256[2]
    
data: S[2]

@external
def f() -> bool:
    s1: S = self.data[0]
    s1.x = 2**200
    s2: S = self.data[1]
    s2.x = 2**200
    self.data = empty(S[2])
    return True 

# ----
# f() -> true # This code interprets x as an array length and thus will go out of gas. neither of the two should throw due to out-of-bounds access #

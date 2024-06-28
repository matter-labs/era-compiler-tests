# This tests a swap in storage which does not work as one
# might expect because we do not have temporary storage.
# (x, y) = (y, x) is the same as
# y = x;
# x = y;
struct S:
    a: uint256
    b: uint256
    
x: public(S)
y: public(S)

@external
def set():
    self.x.a = 1
    self.x.b = 2
    self.y.a = 3
    self.y.b = 4

@external
def swap():
    self.y = self.x
    self.x = self.y

# ----
# x() -> 0, 0
# y() -> 0, 0
# set() ->
# gas irOptimized: 109733
# gas legacy: 109732
# gas legacyOptimized: 109682
# x() -> 1, 2
# y() -> 3, 4
# swap() ->
# x() -> 1, 2
# y() -> 1, 2

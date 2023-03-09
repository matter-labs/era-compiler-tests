struct s1:
    x: uint8
    y: bool

struct s2:
    z: uint32
    s1data: s1
    recursive: HashMap[uint8, s2]

data: s2

@external
def check() -> bool:
    return self.data.z == 1 and self.data.s1data.x == 2 and self.data.s1data.y == True and self.data.recursive[3].recursive[4].z == 5 and self.data.recursive[4].recursive[3].z == 6 and self.data.recursive[0].s1data.y == False and self.data.recursive[4].z == 9

@external
def set():
    self.data.z = 1
    self.data.s1data.x = 2
    self.data.s1data.y = True
    self.data.recursive[3].recursive[4].z = 5
    self.data.recursive[4].recursive[3].z = 6
    self.data.recursive[0].s1data.y = False
    self.data.recursive[4].z = 9

# ----
# check() -> false
# set() ->
# gas irOptimized: 134433
# gas legacy: 135277
# gas legacyOptimized: 134064
# check() -> true

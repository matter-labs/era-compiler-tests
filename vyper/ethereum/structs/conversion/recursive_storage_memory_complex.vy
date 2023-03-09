interface Self:
    def countData(tree: Tree) -> uint256: nonpayable
    def copyFromTree(tree: Tree, data: DynArray[uint256, 100], offset: uint256) -> uint256: nonpayable

struct Tree:
    data: uint256
    children: DynArray[Tree, 10]

storageTree: Tree
childStorageTree: Tree

@external
def __init__():
    self.storageTree.data = convert(0x42, uint256)
    for i in range(2):
        self.storageTree.append(self.childStorageTree)
    self.storageTree.children[0].data = convert(0x4200, uint256)
    self.storageTree.children[1].data = convert(0x4201, uint256)
    for i in range(3):
        self.storageTree.children[0].children.append(self.childStorageTree)
    for i in range(3):
        self.storageTree.children[0].children[i].data = convert(0x420000, uint256) + i
    for i in range(4):
        self.storageTree.children[1].children.append(self.childStorageTree)
    for i in range(4):
        self.storageTree.children[1].children[i].data = convert(0x420100, uint256) + i

@external
def countData(tree: Tree) -> uint256:
    c: uint256 = 1
    for i in range(10):
        if not i < len(tree.children):
            break
        c += Self(self).countData(tree.children[i])
    return c

@external
def copyFromTree(tree: Tree, data: DynArray[uint256, 100], offset: uint256) -> uint256:
    data[offset] = tree.data
    offset += 1
    for i in range(10):
        if not i < len(tree.children):
            break
        offset = Self(self).copyFromTree(tree.children[i], data, offset)
    return offset

@external
def run() -> DynArray[uint256, 100]:
    memoryTree: Tree = empty(Tree)
    memoryTree = self.storageTree
    length: uint256 = Self(self).countData(memoryTree)
    result: DynArray[uint256, 100] = []
    for i in range(100):
        if not i < length:
            break
        result.append(0)
    Self(self).copyFromTree(memoryTree, result, 0)
    return result

# ----
# run() -> 0x20, 10, 0x42, 0x4200, 0x420000, 0x420001, 0x420002, 0x4201, 0x420100, 0x420101, 0x420102, 0x420103

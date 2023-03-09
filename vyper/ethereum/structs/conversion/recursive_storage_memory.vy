struct Tree:
    children: DynArray[Tree, 100]
    
storageTree: Tree
children: DynArray[Tree, 100]

@external
def __init__():
    for i in range(2):
        self.storageTree.append(empty(Tree))
    for i in range(23):
        self.storageTree.children[0].children.append(empty(Tree))
    for i in range(42):
        self.storageTree.children[1].children.append(empty(Tree))
    
@external
def run() -> (uint256, uint256, uint256):
    memoryTree: Tree = empty(Tree)
    memoryTree = self.storageTree
    return (len(memoryTree.children), len(memoryTree.children[0].children), len(memoryTree.children[1].children))

# ----
# run() -> 2, 23, 42
# gas irOptimized: 193756
# gas legacy: 186016
# gas legacyOptimized: 184668

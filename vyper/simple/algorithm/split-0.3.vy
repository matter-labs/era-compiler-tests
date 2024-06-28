#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "f",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!       "0",
#!       "0",
#!       "0",
#!       "3",
#!       "0",
#!       "0",
#!       "2",
#!       "0",
#!       "1"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-586/treap-minimization-failure-for-m1-m3

interface Self:
    def split(p: uint256, nodes: Node[3]) -> (uint256, uint256, Node[3]): view

struct Node:
    key: uint256
    l: uint256
    r: uint256

@external
@view
def split(p: uint256, _nodes: Node[3]) -> (uint256, uint256, Node[3]):
    nodes: Node[3] = _nodes
    if p == 0:
        return (0, 0, nodes)
    if nodes[0].key < 1:
        p1: uint256 = 0
        p2: uint256 = 0
        (p1, p2, nodes) = Self(self).split(nodes[p].r, nodes)
        nodes[p].r = p1
        return (p, 0, nodes)
    else: # Should be unreachable(nodes[0].key == 0 always), but if remove this branch - test will work.
        p1: uint256 = 0
        p2: uint256 = 0
        (p1, p2, nodes) = Self(self).split(nodes[p].l, nodes)
        nodes[p].l = p2
        return (0, 0, nodes)

@external
@view
def f() -> Node[3]:
    nodes: Node[3] = empty(Node[3])
    nodes[1] = Node({key: 3, l: 0, r: 0})
    nodes[2] = Node({key: 2, l: 0, r: 1})

    r1: uint256 = 0
    r2: uint256 = 0
    _nodes: Node[3] = empty(Node[3])
    (r1, r2, _nodes) = Self(self).split(2, nodes)

    return _nodes
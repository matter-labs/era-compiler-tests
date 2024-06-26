interface Callable:
    def f(p1: Str1[2], p2: Str2, p3: uint256, p4: uint8[3], p5: uint256[3]) -> uint256: pure

struct Str1:
    a: uint256[2]
    b: uint8

struct Str2:
    a: Str1
    b: uint8

@external
def main(p1: Str1[2], p2: Str2, p3: uint256, p4: uint8[3], p5: uint256[3], callable: address) -> uint256:
    return staticcall Callable(callable).f(p1, p2, p3, p4, p5) * 2

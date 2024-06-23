@internal
def enc_bytes(data: Bytes[128], start: uint256, end: uint256) -> Bytes[192]:
    return abi_encode(slice(data, start, end - start))

@internal
def enc_bytes_reference(data: Bytes[128], start: uint256, end: uint256) -> Bytes[192]:
    tmp: Bytes[128] = slice(data, start, end - start)
    return abi_encode(tmp)

@internal
def compare(x: Bytes[192], y: Bytes[192]):
    assert len(x) == len(y)
    for i: uint256 in range(100):
        if not i < len(x):
            break
        assert slice(x, i, 1) == slice(y, i, 1)

@external
def test_bytes():
    test: Bytes[128] = b"\x41\x42\x42"
    for i: uint256 in range(3):
        for j: uint256 in range(i, i + 3, bound=3):
            if not j <= 3:
                break
            self.compare(self.enc_bytes(test, i, j), self.enc_bytes_reference(test, i, j))

# ====
# EVMVersion: >homestead
# compileViaYul: also
# ----
# test_bytes() ->
# gas irOptimized: 373483
# gas legacy: 418955
# gas legacyOptimized: 326783

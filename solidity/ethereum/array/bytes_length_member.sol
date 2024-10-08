contract c {
    function set() public returns (bool) {
        data = msg.data;
        return true;
    }

    function getLength() public returns (uint256) {
        return data.length;
    }

    bytes data;
}
// ----
// getLength() -> 0
// set(): 1, 2 -> true
// gas irOptimized: 110422
// gas legacy: 110951
// gas legacyOptimized: 110576
// getLength() -> 68

library L {
    function g() external {}
}
contract C {
    function f() public returns (bytes memory) {
        (bool success, bytes memory result) = address(L).call(abi.encodeWithSignature("g()"));
		assert(!success);
		return result;
    }
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// library: L
// f() -> 32, 0

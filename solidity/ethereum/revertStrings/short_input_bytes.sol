pragma abicoder               v2;
contract C {
	function e(bytes memory a) public pure returns (uint) { return 7; }
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// e(bytes): 0x20, 7 -> FAILURE

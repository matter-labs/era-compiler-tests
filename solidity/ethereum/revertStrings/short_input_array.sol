pragma abicoder               v2;
contract C {
	function f(uint[] memory a) public pure returns (uint) { return 7; }
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(uint256[]): 0x20, 1 -> FAILURE

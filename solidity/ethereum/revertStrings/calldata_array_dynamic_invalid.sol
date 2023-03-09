pragma abicoder               v2;
contract C {
	function f(uint256[][] calldata a) external returns (uint) {
		return 42;
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(uint256[][]): 0x20, 1 -> FAILURE

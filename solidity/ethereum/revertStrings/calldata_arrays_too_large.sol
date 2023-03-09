pragma abicoder               v2;
contract C {
	function f(uint a, uint[] calldata b, uint c) external pure returns (uint) {
		return 7;
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(uint256,uint256[],uint256): 6, 0x60, 9, 0x1000000000000000000000000000000000000000000000000000000000000002, 1, 2 -> FAILURE
